.class Lcom/facebook/katana/activity/media/AlbumsActivity$1;
.super Ljava/lang/Object;
.source "AlbumsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/AlbumsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/AlbumsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$1;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$1;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$1;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->f(Lcom/facebook/katana/activity/media/AlbumsActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$1;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    iget-object v3, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$1;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v3}, Lcom/facebook/katana/activity/media/AlbumsActivity;->e(Lcom/facebook/katana/activity/media/AlbumsActivity;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookAlbum;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->a(Lcom/facebook/katana/activity/media/AlbumsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$1;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->removeDialog(I)V

    .line 407
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$1;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->showDialog(I)V

    .line 408
    return-void
.end method
