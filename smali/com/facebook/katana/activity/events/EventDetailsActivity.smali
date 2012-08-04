.class public Lcom/facebook/katana/activity/events/EventDetailsActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "EventDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

.field private g:Lcom/facebook/katana/binding/AppSessionListener;

.field private h:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/activity/events/EventDetailsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    return-object v0
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/events/EventGuestsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    const-string v1, "extra_event_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/events/EventDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->q()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->h:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 123
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->setContentView(I)V

    .line 127
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 129
    new-instance v0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventDetailsActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    .line 130
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->b(Z)V

    .line 132
    return-void
.end method

.method public final b(Z)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/activity/events/EventDetailsAdapter$EventQuery;->a:[Ljava/lang/String;

    const-string v3, ""

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->h:Landroid/database/Cursor;

    .line 227
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    :cond_1
    if-eqz p1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;J)Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->p()V

    goto :goto_0

    .line 232
    :cond_2
    const v0, 0x7f0b01e6

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 235
    :cond_3
    new-instance v5, Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->h:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->h:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->h:Landroid/database/Cursor;

    const-string v2, "event_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v11, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;Landroid/database/Cursor;JJ)V

    iput-object v5, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    .line 240
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->h()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v13}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 241
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v13}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 242
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 243
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v13}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 244
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->d()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 303
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 267
    :pswitch_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v2, 0x7f0b01e8

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const v2, 0x7f0b01f1

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const v2, 0x7f0b01e9

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 273
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    const v0, 0x7f0b01e7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    new-instance v3, Lcom/facebook/katana/activity/events/EventDetailsActivity$1;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity$1;-><init>(Lcom/facebook/katana/activity/events/EventDetailsActivity;)V

    .line 291
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->c()I

    move-result v0

    .line 292
    sget-object v4, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ordinal()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 294
    const/4 v0, -0x1

    .line 297
    :cond_0
    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    .line 164
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 165
    if-gez v0, :cond_1

    .line 167
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 169
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->showDialog(I)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;

    .line 180
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->b()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->f:Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->a(J)V

    goto :goto_0

    .line 190
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "geo:0,0?q="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x7f0800b9
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 159
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 142
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 145
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventDetailsActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 149
    return-void
.end method
