.class Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PlatformDialogActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/PlatformDialogActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/PlatformDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/PlatformDialogActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;-><init>(Lcom/facebook/katana/activity/PlatformDialogActivity;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "return_via_intent_url"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "activity_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    if-nez v0, :cond_0

    .line 302
    const-string v0, ""

    .line 305
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fb"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_1

    .line 312
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/PlatformDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 322
    :goto_0
    return-void

    .line 318
    :cond_2
    const-string v0, "fbconnect"

    const-string v1, "http"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->a(Lcom/facebook/katana/activity/PlatformDialogActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->a(Lcom/facebook/katana/activity/PlatformDialogActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 354
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v1, "failing_url"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity;->c(Landroid/os/Bundle;)V

    .line 339
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "check_certs"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 256
    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 267
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    const v1, 0x7f0b01e5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 264
    :cond_2
    const-string v0, "PlatformDialogActivity"

    iget-object v1, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    const v2, 0x7f0b01e4

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/PlatformDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 273
    const-string v1, "fbconnect://success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-direct {p0, p2}, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a(Ljava/lang/String;)V

    .line 284
    :goto_0
    return v0

    .line 278
    :cond_0
    const-string v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogWebViewClient;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/PlatformDialogActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
