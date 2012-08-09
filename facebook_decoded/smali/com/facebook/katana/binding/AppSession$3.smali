.class Lcom/facebook/katana/binding/AppSession$3;
.super Landroid/os/AsyncTask;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/facebook/katana/binding/AppSession;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$3;->b:Lcom/facebook/katana/binding/AppSession;

    iput-object p2, p0, Lcom/facebook/katana/binding/AppSession$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1149
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->b(Landroid/content/Context;)V

    .line 1150
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$3;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$3;->b:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V

    .line 1152
    return-object v2
.end method

.method private b()V
    .locals 4

    .prologue
    .line 1157
    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->k()Ljava/lang/String;

    move-result-object v0

    .line 1158
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$3;->a:Landroid/content/Context;

    const-class v3, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1159
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1160
    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession$3;->b:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v3}, Lcom/facebook/katana/binding/AppSession;->c(Lcom/facebook/katana/binding/AppSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$3;->b:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession$3;->b:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v3}, Lcom/facebook/katana/binding/AppSession;->d(Lcom/facebook/katana/binding/AppSession;)Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$3;->b:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession$3;->a:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1168
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSession$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSession$3;->b()V

    return-void
.end method
