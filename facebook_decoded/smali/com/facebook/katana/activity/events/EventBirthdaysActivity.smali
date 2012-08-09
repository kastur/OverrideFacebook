.class public Lcom/facebook/katana/activity/events/EventBirthdaysActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "EventBirthdaysActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;

.field private g:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventBirthdaysActivity;)Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->f:Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->setContentView(I)V

    .line 61
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 64
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->s()Landroid/widget/ListView;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_user_ids"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "user_id"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v0, " IN ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 70
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 71
    if-eqz v0, :cond_0

    .line 72
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    aget-wide v5, v3, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->f:Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;

    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->f:Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    new-instance v0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity$EventsAppSessionListener;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/events/EventBirthdaysActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventBirthdaysActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    .line 88
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
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
    .line 118
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->f:Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;

    .line 119
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->d()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 120
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 99
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 102
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 103
    return-void
.end method
