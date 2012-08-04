.class Lcom/facebook/katana/activity/login/RealLoginActivity$7;
.super Ljava/lang/Object;
.source "RealLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/login/RealLoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$7;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$7;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->g(Lcom/facebook/katana/activity/login/RealLoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$7;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 624
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$7;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->finish()V

    .line 625
    return-void
.end method
