# Ontology Variable Request Form
This repo contains python3 code and other required files for hosting a form & making API calls in order to create ontology variable requests. It acts as both a GitHub App and a GitHub OAuth App to allow users to submit request either under their GitHub username, or an email (without requiring a GitHub account).

The following information must be present in $REPO/config.json in order to run the App.
```javascript
{
    "port":"-----",
    "base_url":"https://URL.where/app/is/served",
    "iss":"-----",
    "skey":"./path/to/oauth.private-key.pem",
    "webhook_secret":"-----",
    "oauth":{
        "id":"-----",
        "secret":"-----"
    }
}
```

## Setup Steps

1. Create a new GitHub App. From the GitHub App settings page, retrieve and enter into config.json the ISS, private key, and webhook secret.
2. Create a new GitHub OAuth App. From the OAuth App settings page, retrieve and enter into config.json the oauth ID and oauth secret.
3. Run serve.py to launch the app, it will launch on the port specified in config.json.


## Adding a new crop species to the form
1. On the main organization page (https://github.com/Planteome), choose "Settings", then "Github Apps".
2. Choose "Configure" for either "planteome-traits-app" (trait-requests.planteome.org) or "Ontology Variable Submission App" (submit.rtbbase.org).
3. Add repo
4. It will take you to the deploy page for that site, fill in the info. The new one may not show up right away, there is a refresh button at the bottom. 
