.class Lcom/facebook/katana/binding/AppSession$5;
.super Ljava/lang/Object;
.source "AppSession.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookAuthentication$Callback;


# instance fields
.field private synthetic a:Lcom/facebook/katana/binding/AppSession;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/AppSession;)V
    .locals 0
    .parameter

    .prologue
    .line 3904
    iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$5;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$5;->a:Lcom/facebook/katana/binding/AppSession;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_AUTH_COOKIE_FOR_FW:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V

    .line 3908
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 3912
    const-string v0, "ROOT"

    const-string v1, "Failed to fetch auth cookies in preloader - authenticationFailed"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3913
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$5;->a:Lcom/facebook/katana/binding/AppSession;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_AUTH_COOKIE_FOR_FW:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V

    .line 3914
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 3919
    const-string v0, "ROOT"

    const-string v1, "Failed to fetch auth cookies in preloader - authenticationNetworkFailed"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3921
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$5;->a:Lcom/facebook/katana/binding/AppSession;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_AUTH_COOKIE_FOR_FW:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V

    .line 3922
    return-void
.end method
