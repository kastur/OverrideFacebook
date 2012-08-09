.class public Lcom/facebook/katana/activity/profilelist/GroupListActivity;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity;
.source "GroupListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/profilelist/GroupListActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f0802ef

    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->d(Z)V

    .line 158
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 81
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    const v2, 0x7f0b0206

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    const v0, 0x7f0b0205

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->a(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0300f3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->setContentView(I)V

    .line 48
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 51
    new-instance v0, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    .line 54
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 57
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->f()V

    .line 60
    new-instance v0, Lcom/facebook/katana/activity/profilelist/GroupListActivity$GroupsListListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/profilelist/GroupListActivity$GroupsListListener;-><init>(Lcom/facebook/katana/activity/profilelist/GroupListActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 61
    return-void
.end method

.method public final a(Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 110
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {p0, v1, v2}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 112
    const-string v2, "extra_user_display_name"

    iget-object v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "extra_image_url"

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v0, "extra_user_type"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 126
    const/4 v0, 0x2

    const v1, 0x7f0b035b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020229

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 140
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    invoke-static {p0}, Lcom/facebook/katana/service/method/FqlGetGroups;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 137
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->b(Z)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-super {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->onResume()V

    .line 70
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 72
    invoke-static {p0}, Lcom/facebook/katana/service/method/FqlGetGroups;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->b(Z)V

    .line 74
    return-void
.end method
