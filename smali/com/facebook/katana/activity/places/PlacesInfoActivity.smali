.class public Lcom/facebook/katana/activity/places/PlacesInfoActivity;
.super Lcom/facebook/katana/activity/ProfileFacebookListActivity;
.source "PlacesInfoActivity.java"

# interfaces
.implements Lcom/facebook/katana/TabProgressSource;


# instance fields
.field private e:Lcom/facebook/katana/activity/places/PlacesInfoAdapter;

.field private f:Lcom/facebook/katana/model/FacebookPlace;

.field private n:Lcom/facebook/katana/TabProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;-><init>()V

    .line 38
    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPlace;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->e:Lcom/facebook/katana/activity/places/PlacesInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->a(Lcom/facebook/katana/model/FacebookPlace;)V

    .line 115
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 121
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 54
    iput-boolean v2, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->m:Z

    .line 55
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_place"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->f:Lcom/facebook/katana/model/FacebookPlace;

    .line 57
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->f:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    iput-wide v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->i:J

    .line 58
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0300e5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->setContentView(I)V

    .line 62
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 64
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->j()V

    .line 71
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->h()V

    .line 74
    new-instance v0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->e:Lcom/facebook/katana/activity/places/PlacesInfoAdapter;

    .line 75
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->e:Lcom/facebook/katana/activity/places/PlacesInfoAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->f:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->a(Lcom/facebook/katana/model/FacebookPlace;)V

    .line 77
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->e:Lcom/facebook/katana/activity/places/PlacesInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/places/PlacesInfoActivity$ActivityBlob;

    .line 80
    if-eqz v0, :cond_1

    .line 81
    iget-object v0, v0, Lcom/facebook/katana/activity/places/PlacesInfoActivity$ActivityBlob;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->a(Lcom/facebook/katana/model/FacebookPlace;)V

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->f()V

    .line 86
    return-void
.end method

.method public final a(Lcom/facebook/katana/TabProgressListener;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->n:Lcom/facebook/katana/TabProgressListener;

    .line 132
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->n:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->n:Lcom/facebook/katana/TabProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public final i_()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->f:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/facebook/katana/activity/places/PlacesInfoActivity$ActivityBlob;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->f:Lcom/facebook/katana/model/FacebookPlace;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/places/PlacesInfoActivity$ActivityBlob;-><init>(Lcom/facebook/katana/activity/places/PlacesInfoActivity;Lcom/facebook/katana/model/FacebookPlace;)V

    .line 105
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onResume()V

    .line 93
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 94
    return-void
.end method
