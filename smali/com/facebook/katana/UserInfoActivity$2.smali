.class Lcom/facebook/katana/UserInfoActivity$2;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/UserInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity$2;->a:Lcom/facebook/katana/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$2;->a:Lcom/facebook/katana/UserInfoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/UserInfoActivity;->showDialog(I)V

    .line 248
    return-void
.end method
