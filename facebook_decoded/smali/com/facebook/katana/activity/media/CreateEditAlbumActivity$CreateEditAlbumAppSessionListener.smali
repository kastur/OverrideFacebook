.class Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "CreateEditAlbumActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;-><init>(Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;)V

    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->removeDialog(I)V

    .line 53
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->a(Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const v1, 0x7f0b01cd

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 57
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->setResult(I)V

    .line 58
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->finish()V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const v1, 0x7f0b01cb

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final f(I)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->removeDialog(I)V

    .line 70
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->b(Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const v1, 0x7f0b01d4

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 74
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->setResult(I)V

    .line 75
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->a:Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    const v1, 0x7f0b01d2

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
