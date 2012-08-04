.class public abstract Lcom/facebook/katana/activity/PlatformDialogActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "PlatformDialogActivity.java"


# static fields
.field private static f:Ljava/util/Locale;


# instance fields
.field protected e:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/app/ProgressDialog;

.field private i:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/activity/PlatformDialogActivity;->f:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->g:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->e:Ljava/lang/String;

    .line 373
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/PlatformDialogActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 171
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/URLQueryBuilder;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 173
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/URLQueryBuilder;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    const-string v0, "PlatformDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught malformed URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 232
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 233
    invoke-virtual {p0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 237
    sget-object v1, Lcom/facebook/katana/activity/PlatformDialogActivity;->f:Ljava/util/Locale;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/katana/activity/PlatformDialogActivity;->f:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    sput-object v0, Lcom/facebook/katana/activity/PlatformDialogActivity;->f:Ljava/util/Locale;

    .line 239
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, "facebook.com"

    const-string v2, "locale="

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_1
    return-void
.end method

.method private a(Landroid/webkit/WebViewClient;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 211
    const v0, 0x7f08029c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->i:Landroid/webkit/WebView;

    .line 212
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 215
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->a(Landroid/content/res/Configuration;)V

    .line 217
    return-void
.end method

.method private a(ZLandroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 83
    :goto_0
    if-nez p2, :cond_1

    .line 84
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->setResult(I)V

    .line 90
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->finish()V

    .line 91
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 87
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/PlatformDialogActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->c(Landroid/os/Bundle;)V

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/FacebookPlatform;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->e:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->i:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->g:Ljava/lang/String;

    .line 142
    const v0, 0x7f0300e0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->setContentView(I)V

    .line 143
    new-instance v0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogSpinner;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogSpinner;-><init>(Lcom/facebook/katana/activity/PlatformDialogActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->h:Landroid/app/ProgressDialog;

    .line 144
    new-instance v0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;

    invoke-direct {v0, p0, v2}, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;-><init>(Lcom/facebook/katana/activity/PlatformDialogActivity;B)V

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->a(Landroid/webkit/WebViewClient;)V

    .line 145
    invoke-virtual {p0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->f()V

    .line 147
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    const-string v0, "PlatformDialogActivity"

    const-string v1, "mUrl was not set in setupDialogURL(). Any class inheriting from PlatformDialogActivity MUST set mUrl in this method."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-eq v0, v1, :cond_2

    .line 157
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Landroid/app/Activity;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->h()V

    goto :goto_0
.end method

.method protected final b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/activity/PlatformDialogActivity;->a(ZLandroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method protected final c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/activity/PlatformDialogActivity;->a(ZLandroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method protected abstract f()V
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    if-nez p2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->finish()V

    .line 118
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->h()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x8a2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    return-void
.end method
