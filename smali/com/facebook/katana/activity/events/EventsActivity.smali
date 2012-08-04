.class public Lcom/facebook/katana/activity/events/EventsActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "EventsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/activity/events/EventsAdapter;

.field private g:Lcom/facebook/katana/binding/AppSessionListener;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventsActivity;)Lcom/facebook/katana/activity/events/EventsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->f:Lcom/facebook/katana/activity/events/EventsAdapter;

    return-object v0
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    sget-object v1, Lcom/facebook/katana/provider/EventsProvider;->b:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventsActivity;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventsActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/events/EventsActivity;->b(Z)V

    return-void
.end method

.method private a(Lcom/facebook/katana/activity/events/EventsAdapter$Item;)V
    .locals 6
    .parameter

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->h()I

    move-result v0

    new-array v2, v0, [J

    .line 175
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;

    .line 177
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    const-string v1, "extra_user_ids"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventsActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/events/EventsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventsActivity;->q()V

    return-void
.end method

.method private b(Z)V
    .locals 4
    .parameter

    .prologue
    const v0, 0x7f0802ef

    const v1, 0x7f0800af

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 202
    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/events/EventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->f:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/events/EventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    const v1, 0x7f0b01f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/events/EventsActivity;->b(Z)V

    .line 191
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/events/EventsActivity;->h:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;J)Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventsActivity;->p()V

    .line 193
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventsActivity;->setContentView(I)V

    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 107
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    iput-wide v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->h:J

    .line 110
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/facebook/katana/activity/events/EventsAdapter;

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/activity/events/EventsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/events/EventsActivity;->f:Lcom/facebook/katana/activity/events/EventsAdapter;

    .line 113
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventsActivity;->f:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    new-instance v1, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventsActivity;B)V

    iput-object v1, p0, Lcom/facebook/katana/activity/events/EventsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    .line 119
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 222
    const/4 v0, 0x2

    const v1, 0x7f0b035b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020229

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 224
    const/4 v0, 0x1

    return v0
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
    .line 157
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->f:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/activity/events/EventsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    .line 158
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 159
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/events/EventsActivity;->a(Lcom/facebook/katana/activity/events/EventsAdapter$Item;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/events/EventsActivity;->a(J)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 234
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/events/EventsActivity;->f()V

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 151
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->f:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->a()V

    .line 152
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 130
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 133
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventsActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 138
    invoke-direct {p0}, Lcom/facebook/katana/activity/events/EventsActivity;->f()V

    .line 140
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity;->f:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->b()V

    .line 141
    return-void
.end method
