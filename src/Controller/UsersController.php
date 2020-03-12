<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;
use Cake\Network\Email\Email;
use Google_Client;
use Google_Service_Oauth2;

/**
 * Users Controller
 *
 * @property \App\Model\Table\UsersTable $Users
 *
 * @method \App\Model\Entity\User[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class UsersController extends AppController
{
    public function beforeFilter(Event $event)
    {
        parent::beforeFilter($event);

        $this->Auth->allow(['login', 'logout', 'googlelogin', 'confirmLogin']);
    }

    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index()
    {
        $users = $this->Users->find('all', [
            'contain' => []
        ]);

        $this->set(compact('users'));
    }

    /**
     * View method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $user = $this->Users->get($id, [
            'contain' => []
        ]);

        $this->set('user', $user);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $user = $this->Users->newEntity();
        if ($this->request->is('post')) {
            $user = $this->Users->patchEntity($user, $this->request->getData());

            $user->active = $this->request->getData(['active']) == 'on' ? 1 : 0;

            $file = $this->request->getData(['avatar']);

            if (!empty($file['name']))
                $user->avatar = $this->_uploadAvatar($file);

            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The user could not be saved. Please, try again.'));
        }

        $this->set(compact('user'));
    }

    /**
     * Edit method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $user = $this->Users->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $tmpAva = $user->avatar;
            $user = $this->Users->patchEntity($user, $this->request->getData());

            $user->active = $this->request->getData(['active']) == 'on' ? 1 : 0;

            $file = $this->request->getData(['avatar']);

            if (!empty($file['name']))
                $user->avatar = $this->_uploadAvatar($file);
            else
                $user->avatar = $tmpAva;

            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user {0} has been saved.', $user->fullname));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The user could not be saved. Please, try again.'));
        }

        $this->set(compact('user'));
    }

    /**
     * Delete method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $user = $this->Users->get($id);
        if ($this->Users->delete($user)) {
            $this->Flash->success(__('The user has been deleted.'));
        } else {
            $this->Flash->error(__('The user could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }

    public function changePassword($id = null)
    {
        $user = $this->Users->get($id);

        if ($this->request->is(['patch', 'put', 'post'])) {
            $user = $this->Users->patchEntity($user, ['password' => $this->request->getData(['password2'])]);

            if ($this->Users->save($user)) {
                $this->Flash->success(__('New password for {0} has been saved.', $user->fullname));
            } else {
                $this->Flash->error(__('New password for {0} could not be saved.', $user->fullname));
            }

            $this->redirect(['action' => 'index']);
        }

        $this->set(compact('user'));
        $this->set('_serialize', ['user']);
    }

    /**
     * Upload Avatar
     *
     */
    function _uploadAvatar($file) {
        $ext = substr(strtolower(strrchr($file['name'], '.')), 1); //get the extension
        $fileName = basename($file['name'], '.' .$ext);
        $fileName = $this->seoUrl($fileName);
        $setNewFileName = $fileName . '.' . $ext;

        //check if folder exist
        if (!file_exists(WWW_ROOT . 'uploads')){
            mkdir(WWW_ROOT . 'uploads', 0775);
        }
        if (!file_exists(WWW_ROOT . 'uploads' . DS . 'avatar')){
            mkdir(WWW_ROOT . 'uploads' . DS . 'avatar', 0775);
        }
        //do the actual uploading of the file. First arg is the tmp name, second arg is 
        //where we are putting it
        if (move_uploaded_file($file['tmp_name'], WWW_ROOT . 'uploads' . DS . 'avatar' . DS . $setNewFileName)) {
            //prepare the filename for database entry 
            $imgPath = $setNewFileName;
        }

        return $imgPath;
    }

    /**
     * Auth method
     *
     */
    public function login()
    {
        $this->viewBuilder()->setLayout('login');
        
        if ($this->request->is('post')) {
            if ($this->Recaptcha->verify()) {
                $user = $this->Auth->identify();
                if ($user) {
                    $this->Auth->setUser($user);
                    return $this->redirect($this->Auth->redirectUrl());
                }
                $this->Flash->error(__('Invalid username or password, try again'));
            }
            $this->Flash->error(__('Please check Recaptcha first'));
        }
    }

    public function logout()
    {
        $this->request->Session()->destroy('access_token');
        return $this->redirect($this->Auth->logout());

        // return $this->redirect('https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://'. $_SERVER['HTTP_HOST'] .'/login');
    }

    public function googlelogin() {
        isset($_SERVER['HTTPS'] ) ? $http_host = 'https://' : $http_host = 'http://';
        $client = new Google_Client();
        $client->setClientId('225883557121-ql4fknbf14tuehpairetlelldrnnvpml.apps.googleusercontent.com');
        $client->setClientSecret('1_YaI9cBn-Koqg4Tp1SndW9F');
        $client->setRedirectUri($http_host . $_SERVER['HTTP_HOST'] . '/users/confirmLogin');
        $client->setScopes(array('https://www.googleapis.com/auth/userinfo.profile', 'https://www.googleapis.com/auth/userinfo.email'));
        $url = $client->createAuthUrl();
        $this->redirect($url);
    }

    public function confirmLogin() {
        isset($_SERVER['HTTPS'] ) ? $http_host = 'https://' : $http_host = 'http://';
        $client = new Google_Client();
        $client->setClientId('225883557121-ql4fknbf14tuehpairetlelldrnnvpml.apps.googleusercontent.com');
        $client->setClientSecret('1_YaI9cBn-Koqg4Tp1SndW9F');
        $client->setRedirectUri($http_host . $_SERVER['HTTP_HOST'] . '/users/confirmLogin');

        $client->setScopes(array('https://www.googleapis.com/auth/userinfo.profile', 'https://www.googleapis.com/auth/userinfo.email'));
        $client->setApprovalPrompt('auto');

        if (isset($this->request->query['code'])) {
            $client->authenticate($this->request->query['code']);
            $this->request->Session()->write('access_token', $client->getAccessToken());
        }

        if ($this->request->Session()->check('access_token') && ($this->request->Session()->read('access_token'))) {
            $client->setAccessToken($this->request->Session()->read('access_token'));
        }

        if ($client->getAccessToken()) {
            $this->request->Session()->write('access_token', $client->getAccessToken());
            $oauth2 = new Google_Service_Oauth2($client);
            $user = $oauth2->userinfo->get();
            try {
                if (!empty($user)) {
                    $result = $this->Users->find('all')
                            ->where(['AND' => ['email' => $user['email'], 'active' => '1']])
                            ->first();
                    if ($result) {
                        $this->Auth->setUser($result->toArray());
                        $this->redirect($this->Auth->redirectUrl());
                    } else {
                        $this->Flash->set('Account not active or not found');
                        $this->redirect(['action' => 'login']);

                        /*$data = array();
                        $data['email'] = $user['email'];
                        $data['first_name'] = $user['givenName'];
                        $data['last_name'] = $user['familyName'];
                        $data['socialId'] = $user['id'];

                        $entity = $this->Users->newEntity($data);
                        if ($this->Users->save($entity)) {
                            $data['id'] = $entity->id;
                            $this->Auth->setUser($data);
                            $this->redirect($this->Auth->redirectUrl());
                        } else {
                            $this->Flash->set('Logging error');
                            $this->redirect(['action' => 'login']);
                        } */
                    }
                } else {
                    $this->Flash->set('Google infos not found');
                    $this->redirect(['action' => 'login']);
                }
            } catch (\Exception $e) {
                $this->Flash->set('Google error');
                return $this->redirect(['action' => 'login']);
            }
        }
    }

    /**
     * AJAX
     *
     */
    function sendMailAjax() {
        if ($this->request->is('ajax')) {
            $this->autoRender = false;
            $this->viewBuilder()->setLayout('ajax');

            $email = new Email();
            $email->setTransport('gmail')
                ->setTemplate('email_ajax_test', 'default')
                ->setEmailFormat('html')
                ->setViewVars(['message' => $_POST['form_data']['message']])
                ->setSubject('Send Email AJAX : '.$_POST['form_data']['subject'])
                ->setTo($_POST['form_data']['to'])
                // ->setReplyto($_POST['form_data']['to'])
                // ->setBcc('dummy@sbm-itb.ac.id')
                ->setFrom('noreply-auto@sbm-itb.ac.id', 'NO REPLY');
                
            $email->send() ? $res = 'success' : $res = 'failed';

            echo json_encode($res);
        }
    }
}
