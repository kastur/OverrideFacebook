.class public Lcom/facebook/katana/activity/places/AddPageTopicActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "AddPageTopicActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/katana/activity/places/AddPageTopicAdapter;

.field private f:I

.field private g:J

.field private h:Lcom/facebook/katana/binding/AppSession;

.field private final i:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/facebook/katana/activity/places/AddPageTopicActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity$1;-><init>(Lcom/facebook/katana/activity/places/AddPageTopicActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->i:Lcom/facebook/katana/binding/AppSessionListener;

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/AddPageTopicActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->f:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/places/AddPageTopicActivity;)Lcom/facebook/katana/activity/places/AddPageTopicAdapter;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->e:Lcom/facebook/katana/activity/places/AddPageTopicAdapter;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0300c4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_topic_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->g:J

    .line 60
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_category_level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->f:I

    .line 62
    new-instance v0, Lcom/facebook/katana/activity/places/AddPageTopicAdapter;

    iget v1, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->f:I

    iget-wide v2, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->g:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/facebook/katana/activity/places/AddPageTopicAdapter;-><init>(Landroid/content/Context;IJ)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->e:Lcom/facebook/katana/activity/places/AddPageTopicAdapter;

    .line 63
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    .line 64
    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->e:Lcom/facebook/katana/activity/places/AddPageTopicAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 65
    invoke-virtual {v0, p0}, Lcom/facebook/katana/ui/SectionedListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f0b0297

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    if-nez p2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 113
    const-string v0, "object"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v1, p3}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->setResult(ILandroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->finish()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->e:Lcom/facebook/katana/activity/places/AddPageTopicAdapter;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/activity/places/AddPageTopicAdapter;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/PageTopic;

    .line 88
    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->e:Lcom/facebook/katana/activity/places/AddPageTopicAdapter;

    iget-wide v1, v0, Lcom/facebook/katana/model/PageTopic;->id:J

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/places/AddPageTopicAdapter;->a(J)Ljava/util/List;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-wide v1, v0, Lcom/facebook/katana/model/PageTopic;->id:J

    iget-wide v3, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->g:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/activity/places/AddPageTopicActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v2, "extra_topic_id"

    iget-wide v3, v0, Lcom/facebook/katana/model/PageTopic;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 92
    const-string v2, "extra_topic_name"

    iget-object v0, v0, Lcom/facebook/katana/model/PageTopic;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v0, "extra_category_level"

    iget v2, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 97
    const-string v2, "object"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->h:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->i:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 72
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->h:Lcom/facebook/katana/binding/AppSession;

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->h:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->i:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 74
    return-void
.end method
