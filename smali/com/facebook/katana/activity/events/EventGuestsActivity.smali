.class public Lcom/facebook/katana/activity/events/EventGuestsActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "EventGuestsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/activity/events/EventGuestsAdapter;

.field private g:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventGuestsActivity;)Lcom/facebook/katana/activity/events/EventGuestsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->f:Lcom/facebook/katana/activity/events/EventGuestsAdapter;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventGuestsActivity;->setContentView(I)V

    .line 76
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 79
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventGuestsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/facebook/katana/activity/events/EventGuestsAdapter;

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/activity/events/EventGuestsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->f:Lcom/facebook/katana/activity/events/EventGuestsAdapter;

    .line 83
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->f:Lcom/facebook/katana/activity/events/EventGuestsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v1, Lcom/facebook/katana/activity/events/EventGuestsActivity$EventsAppSessionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/activity/events/EventGuestsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventGuestsActivity;B)V

    iput-object v1, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    .line 88
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventGuestsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_event_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 89
    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;J)Ljava/lang/String;

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->f:Lcom/facebook/katana/activity/events/EventGuestsAdapter;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;

    .line 124
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 125
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 102
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 106
    return-void
.end method
