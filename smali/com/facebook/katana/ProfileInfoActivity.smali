.class public Lcom/facebook/katana/ProfileInfoActivity;
.super Lcom/facebook/katana/activity/ProfileFacebookListActivity;
.source "ProfileInfoActivity.java"

# interfaces
.implements Lcom/facebook/katana/TabProgressSource;


# instance fields
.field protected e:Lcom/facebook/katana/ProfileInfoAdapter;

.field protected f:Ljava/lang/String;

.field private n:Lcom/facebook/katana/TabProgressListener;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/TabProgressListener;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/katana/ProfileInfoActivity;->n:Lcom/facebook/katana/TabProgressListener;

    .line 66
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->n:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->n:Lcom/facebook/katana/TabProgressListener;

    iget-boolean v1, p0, Lcom/facebook/katana/ProfileInfoActivity;->o:Z

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method protected final b(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0800b0

    const v3, 0x7f0800af

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->n:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->n:Lcom/facebook/katana/TabProgressListener;

    invoke-interface {v0, p1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 82
    :cond_0
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ProfileInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    iput-boolean p1, p0, Lcom/facebook/katana/ProfileInfoActivity;->o:Z

    .line 84
    if-eqz p1, :cond_2

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/katana/ProfileInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {p0, v4}, Lcom/facebook/katana/ProfileInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_2
    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_3
    invoke-virtual {p0, v3}, Lcom/facebook/katana/ProfileInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p0, v4}, Lcom/facebook/katana/ProfileInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ProfileInfoActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onResume()V

    .line 49
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 51
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ProfileInfoActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ProfileInfoActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ProfileInfoActivity;->removeDialog(I)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity;->f:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method
