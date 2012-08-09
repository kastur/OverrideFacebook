.class public Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity;
.source "GroupMemberListActivity.java"

# interfaces
.implements Lcom/facebook/katana/TabProgressSource;


# instance fields
.field private e:J

.field private f:Lcom/facebook/katana/TabProgressListener;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->e:J

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->q()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->f:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->f:Lcom/facebook/katana/TabProgressListener;

    invoke-interface {v0, p1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 154
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->n:Z

    .line 155
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 90
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    const v2, 0x7f0b02df

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v0, 0x7f0b020e

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 95
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->m:Z

    .line 46
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->a(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->setContentView(I)V

    .line 50
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 52
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->j()V

    .line 53
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->h()V

    .line 56
    new-instance v0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    .line 59
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->f()V

    .line 65
    new-instance v0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity$GroupMemberListListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity$GroupMemberListListener;-><init>(Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 66
    return-void
.end method

.method public final a(Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {p0, p2}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->f(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 129
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {p0, v1, v2}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 131
    const-string v2, "extra_user_display_name"

    iget-object v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "extra_image_url"

    iget-object v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v2, "extra_user_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v2, "can_post"

    iget-boolean v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public final a(Lcom/facebook/katana/TabProgressListener;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->f:Lcom/facebook/katana/TabProgressListener;

    .line 162
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->f:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->f:Lcom/facebook/katana/TabProgressListener;

    iget-boolean v1, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->n:Z

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-super {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->onResume()V

    .line 75
    invoke-static {p0, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 77
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->e:J

    .line 80
    iget-wide v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->e:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetProfile;->b(Landroid/content/Context;J)Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->p()V

    .line 82
    invoke-direct {p0, v4}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->b(Z)V

    .line 83
    return-void
.end method
