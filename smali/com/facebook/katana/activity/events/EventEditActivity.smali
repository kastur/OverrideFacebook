.class public Lcom/facebook/katana/activity/events/EventEditActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "EventEditActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:J

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/katana/features/composer/TimeAdapter;

.field private h:Lcom/facebook/katana/ui/OverlaySelectorView;

.field private i:J

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventEditActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventEditActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventEditActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->g:Lcom/facebook/katana/features/composer/TimeAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/events/EventEditActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventEditActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 153
    instance-of v0, v1, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 158
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v4, "event_name_extra"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "event_description_extra"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "event_place_name_extra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "event_place_id_extra"

    iget-wide v2, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 201
    const-string v1, "event_tagged_ids_extra"

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->f:Ljava/util/Set;

    invoke-static {v2}, Lcom/facebook/katana/util/IntentUtils;->a(Ljava/util/Set;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 202
    const-string v1, "event_timestamp_extra"

    iget-wide v2, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 203
    const-string v1, "event_granularity_extra"

    iget v2, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 205
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventEditActivity;->finish()V

    .line 206
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 210
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    move v0, v1

    .line 212
    :goto_0
    const v2, 0x7f0b046e

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/events/EventEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    if-ne v0, v3, :cond_1

    .line 214
    const v0, 0x7f0b01c1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    .line 215
    :cond_1
    if-le v0, v3, :cond_2

    .line 216
    const v2, 0x7f0b01c2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/activity/events/EventEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, -0x1

    const v7, 0x7f0800c2

    const v6, 0x7f0800c0

    const v5, 0x7f0800b8

    const/4 v4, -0x1

    .line 64
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->setContentView(I)V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->f:Ljava/util/Set;

    .line 70
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->k:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->l:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->m:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->n:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0, v7}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->o:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 78
    const-string v0, "event_place_id_extra"

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->e:J

    .line 80
    const-string v0, "event_timestamp_extra"

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->i:J

    .line 81
    const-string v0, "event_granularity_extra"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->j:I

    .line 83
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Edit event"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->k:Landroid/widget/TextView;

    const-string v2, "event_name_extra"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->l:Landroid/widget/TextView;

    const-string v2, "event_time_full_extra"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->m:Landroid/widget/TextView;

    const-string v2, "event_place_name_extra"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->n:Landroid/widget/TextView;

    const-string v2, "event_description_extra"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v0, 0x7f0b01de

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->a(ILjava/lang/String;)V

    .line 90
    invoke-static {p0}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->createPeriodsTimeAdapter(Landroid/content/Context;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->g:Lcom/facebook/katana/features/composer/TimeAdapter;

    .line 91
    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/OverlaySelectorView;

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->h:Lcom/facebook/katana/ui/OverlaySelectorView;

    .line 92
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->h:Lcom/facebook/katana/ui/OverlaySelectorView;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->g:Lcom/facebook/katana/features/composer/TimeAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->h:Lcom/facebook/katana/ui/OverlaySelectorView;

    new-instance v1, Lcom/facebook/katana/activity/events/EventEditActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/events/EventEditActivity$1;-><init>(Lcom/facebook/katana/activity/events/EventEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->h:Lcom/facebook/katana/ui/OverlaySelectorView;

    new-instance v1, Lcom/facebook/katana/activity/events/EventEditActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/events/EventEditActivity$2;-><init>(Lcom/facebook/katana/activity/events/EventEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setOnFillerClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/events/EventEditActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/events/EventEditActivity$3;-><init>(Lcom/facebook/katana/activity/events/EventEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/events/EventEditActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/events/EventEditActivity$4;-><init>(Lcom/facebook/katana/activity/events/EventEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0, v7}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/events/EventEditActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/events/EventEditActivity$5;-><init>(Lcom/facebook/katana/activity/events/EventEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/events/EventEditActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/events/EventEditActivity$6;-><init>(Lcom/facebook/katana/activity/events/EventEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-direct {p0}, Lcom/facebook/katana/activity/events/EventEditActivity;->j()V

    .line 142
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->h:Lcom/facebook/katana/ui/OverlaySelectorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setVisibility(I)V

    .line 189
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 224
    if-eq p2, v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 230
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 231
    const-string v0, "profiles"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "profiles"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/facebook/katana/util/IntentUtils;->a([J)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->f:Ljava/util/Set;

    .line 238
    invoke-direct {p0}, Lcom/facebook/katana/activity/events/EventEditActivity;->j()V

    goto :goto_0

    .line 244
    :pswitch_1
    const-string v0, "extra_xed_location"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 246
    if-eqz v0, :cond_2

    .line 247
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->e:J

    .line 248
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0b046f

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/events/EventEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 250
    :cond_2
    const-string v0, "extra_place"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "extra_place"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 253
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    iput-wide v1, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->e:J

    .line 254
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->m:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->h:Lcom/facebook/katana/ui/OverlaySelectorView;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/OverlaySelectorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventEditActivity;->g()V

    .line 267
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onBackPressed()V

    .line 268
    return-void
.end method

.method public openNearbySelector(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v1, "launched_for_place"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/events/EventEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method

.method public openTagFriends(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    const-string v1, "profiles"

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->f:Ljava/util/Set;

    invoke-static {v2}, Lcom/facebook/katana/util/IntentUtils;->a(Ljava/util/Set;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 182
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/events/EventEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    :cond_0
    return-void
.end method

.method public openTimeSelector(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/facebook/katana/activity/events/EventEditActivity;->h()V

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->h:Lcom/facebook/katana/ui/OverlaySelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity;->h:Lcom/facebook/katana/ui/OverlaySelectorView;

    const v1, 0x7f080278

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/facebook/katana/activity/events/EventEditActivity;->i()V

    .line 148
    return-void
.end method
