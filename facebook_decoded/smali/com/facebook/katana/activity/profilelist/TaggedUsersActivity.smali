.class public Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity;
.source "TaggedUsersActivity.java"


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;-><init>()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 57
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    const v2, 0x7f0b01fd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const v0, 0x7f0b01fc

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->a(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0300f3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->setContentView(I)V

    .line 35
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 37
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->e:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    .line 43
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    check-cast v0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->a(Ljava/util/List;)V

    .line 44
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 47
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->f()V

    .line 50
    new-instance v0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;-><init>(Lcom/facebook/katana/activity/profilelist/ProfileListActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 51
    return-void
.end method
