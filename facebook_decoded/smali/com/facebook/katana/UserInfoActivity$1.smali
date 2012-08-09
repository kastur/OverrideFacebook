.class Lcom/facebook/katana/UserInfoActivity$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/facebook/katana/dialog/Dialogs$AddFriendListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/UserInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity$1;->a:Lcom/facebook/katana/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$1;->a:Lcom/facebook/katana/UserInfoActivity;

    iput-object p1, v0, Lcom/facebook/katana/UserInfoActivity;->f:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$1;->a:Lcom/facebook/katana/UserInfoActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/UserInfoActivity;->showDialog(I)V

    .line 158
    return-void
.end method
