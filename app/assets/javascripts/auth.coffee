Poochpapa.Auth = Em.Auth.extend
  request: 'jquery'
  response: 'json'
  strategy: 'token'
  session: 'cookie'

  modules: [
    'emberData'
    'authRedirectable'
    'actionRedirectable'
  ]

  signInEndPoint: '/api/sign_in'
  signOutEndPoint: '/api/sign_out'
  tokenKey: 'auth_token'
  tokenIdKey: 'user_id'
  tokenLocation: 'param'

  emberData:
    userModel: 'user'

  authRedirectable:
    route: 'sign-in'

  actionRedirectable:
    signInRoute: 'users'
    signInSmart: true
    signInBlacklist: ['sign-in']
    signOutRoute: 'sign-in'