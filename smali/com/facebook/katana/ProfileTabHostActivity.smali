.class public Lcom/facebook/katana/ProfileTabHostActivity;
.super Lcom/facebook/katana/activity/BaseFacebookTabActivity;
.source "ProfileTabHostActivity.java"

# interfaces
.implements Lcom/facebook/katana/MyTabHost$OnTabChangeListener;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/TabProgressSource;

.field private g:Lcom/facebook/katana/TabProgressListener;

.field private h:Lcom/facebook/katana/binding/AppSessionListener;

.field private i:J

.field private j:I

.field private k:J

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->n:Ljava/util/HashMap;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ProfileTabHostActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    return-wide v0
.end method

.method public static a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb://profile/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/ProfileTabHostActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/katana/ProfileTabHostActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->k:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/katana/ProfileTabHostActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/ProfileTabHostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->k()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->a(ILjava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->o:Ljava/lang/String;

    new-instance v2, Lcom/facebook/katana/util/Tuple;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/facebook/katana/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->a(Landroid/os/Bundle;)V

    .line 185
    invoke-static {p0, v10}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 188
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    .line 189
    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    iput-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->k:J

    .line 190
    iget-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->k:J

    iput-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    .line 192
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_7

    .line 195
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    const-string v0, "com.android.contacts"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    const-string v2, "vnd.android.cursor.item/vnd.facebook.profile"

    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 202
    if-eqz v2, :cond_6

    .line 205
    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    if-eqz v1, :cond_6

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 228
    :goto_0
    if-nez v0, :cond_13

    .line 229
    const-string v0, "wall"

    move-object v1, v0

    .line 232
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 233
    const-string v0, "extra_user_type"

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    .line 236
    const v0, 0x7f0300ec

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ProfileTabHostActivity;->setContentView(I)V

    .line 238
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->h()Landroid/widget/TabHost;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost;

    .line 245
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 246
    const-string v2, "within_tab"

    invoke-virtual {v5, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    const-string v2, "extra_parent_tag"

    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "extra_user_type"

    iget v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v2, "extra_user_id"

    iget-wide v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 250
    const-string v2, "can_post"

    const-string v6, "can_post"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    iget v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v2, v11, :cond_1

    .line 254
    const-string v2, "extra_place"

    const-string v6, "extra_place"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    :cond_1
    iget v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-nez v2, :cond_8

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "fb://profile/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/wall/inner"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 294
    :goto_2
    iget v4, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v4, v11, :cond_e

    .line 295
    const v4, 0x7f0b02ca

    .line 300
    :goto_3
    const-string v6, "wall"

    invoke-virtual {p0, v6, v4}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Ljava/lang/String;I)Landroid/widget/RadioButton;

    move-result-object v4

    .line 301
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 302
    const-string v6, "wall"

    invoke-virtual {v0, v6, v4}, Lcom/facebook/katana/MyTabHost;->a(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;

    move-result-object v4

    .line 303
    invoke-virtual {v4, v2}, Lcom/facebook/katana/MyTabHost$TabSpec;->a(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;

    .line 304
    invoke-virtual {v0, v4}, Lcom/facebook/katana/MyTabHost;->a(Lcom/facebook/katana/MyTabHost$TabSpec;)V

    .line 308
    iget v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-nez v2, :cond_f

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fb://profile/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/info/inner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 321
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 322
    invoke-virtual {v3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 323
    const-string v2, "info"

    const v4, 0x7f0b02d7

    invoke-virtual {p0, v2, v4}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Ljava/lang/String;I)Landroid/widget/RadioButton;

    move-result-object v2

    .line 325
    const-string v4, "info"

    invoke-virtual {v0, v4, v2}, Lcom/facebook/katana/MyTabHost;->a(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;

    move-result-object v2

    .line 326
    invoke-virtual {v2, v3}, Lcom/facebook/katana/MyTabHost$TabSpec;->a(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;

    .line 327
    invoke-virtual {v0, v2}, Lcom/facebook/katana/MyTabHost;->a(Lcom/facebook/katana/MyTabHost$TabSpec;)V

    .line 331
    :cond_3
    iget v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v2, v12, :cond_11

    .line 332
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const-string v3, "group_id"

    iget-wide v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 334
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 336
    const-string v3, "group_members"

    const v4, 0x7f0b02d5

    invoke-virtual {p0, v3, v4}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Ljava/lang/String;I)Landroid/widget/RadioButton;

    move-result-object v3

    .line 338
    const-string v4, "group_members"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/katana/MyTabHost;->a(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;

    move-result-object v3

    .line 339
    invoke-virtual {v3, v2}, Lcom/facebook/katana/MyTabHost$TabSpec;->a(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;

    .line 340
    invoke-virtual {v0, v3}, Lcom/facebook/katana/MyTabHost;->a(Lcom/facebook/katana/MyTabHost$TabSpec;)V

    .line 360
    :goto_5
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->i()V

    .line 362
    invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p0}, Lcom/facebook/katana/MyTabHost;->setOnTabChangedListener(Lcom/facebook/katana/MyTabHost$OnTabChangeListener;)V

    .line 368
    new-instance v0, Lcom/facebook/katana/ProfileTabHostActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/ProfileTabHostActivity$1;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->g:Lcom/facebook/katana/TabProgressListener;

    .line 376
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->d_()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/TabProgressSource;

    iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->f:Lcom/facebook/katana/TabProgressSource;

    .line 377
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->f:Lcom/facebook/katana/TabProgressSource;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->g:Lcom/facebook/katana/TabProgressListener;

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 380
    new-instance v0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;

    invoke-direct {v0, p0, v9}, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 382
    iget-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    iget-wide v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->k:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;J)Ljava/lang/String;

    .line 387
    :cond_4
    return-void

    .line 214
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    move-object v0, v3

    .line 221
    goto/16 :goto_0

    .line 223
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user_id"

    iget-wide v4, p0, Lcom/facebook/katana/ProfileTabHostActivity;->k:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    .line 225
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 263
    :cond_8
    iget v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v2, v12, :cond_9

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "fb://group/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/wall/inner"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_2

    .line 266
    :cond_9
    iget v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_a

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "fb://event/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/wall/inner"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_2

    .line 270
    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    const-string v6, "extra_user_id"

    iget-wide v7, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 273
    iget v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v6, v11, :cond_b

    .line 274
    const-string v6, "extra_type"

    sget-object v7, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v7}, Lcom/facebook/katana/model/FacebookStreamType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    :goto_6
    const-string v6, "extra_user_display_name"

    const-string v7, "extra_user_display_name"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v6, "extra_image_url"

    const-string v7, "extra_image_url"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 276
    :cond_b
    iget v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v6, v12, :cond_c

    .line 277
    const-string v6, "extra_type"

    sget-object v7, Lcom/facebook/katana/model/FacebookStreamType;->GROUP_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v7}, Lcom/facebook/katana/model/FacebookStreamType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 279
    :cond_c
    iget v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v6, v10, :cond_d

    .line 280
    const-string v6, "extra_type"

    sget-object v7, Lcom/facebook/katana/model/FacebookStreamType;->PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v7}, Lcom/facebook/katana/model/FacebookStreamType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 283
    :cond_d
    const-string v6, "extra_type"

    sget-object v7, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v7}, Lcom/facebook/katana/model/FacebookStreamType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 297
    :cond_e
    const v4, 0x7f0b02fc

    goto/16 :goto_3

    .line 311
    :cond_f
    iget v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v2, v11, :cond_10

    .line 312
    new-instance v3, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/activity/places/PlacesInfoActivity;

    invoke-direct {v3, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 313
    :cond_10
    iget v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v2, v10, :cond_2

    .line 314
    new-instance v3, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/PageInfoActivity;

    invoke-direct {v3, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    const-string v2, "com.facebook.katana.profile.id"

    iget-wide v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-virtual {v3, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 317
    const-string v2, "com.facebook.katana.profile.show_photo"

    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    .line 342
    :cond_11
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 345
    iget-wide v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    iget-wide v5, p0, Lcom/facebook/katana/ProfileTabHostActivity;->k:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_12

    .line 346
    const-string v3, "extra_exclude_empty"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    :cond_12
    sget-object v3, Lcom/facebook/katana/provider/PhotosProvider;->g:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 352
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 354
    const-string v3, "photos"

    const v4, 0x7f0b02e2

    invoke-virtual {p0, v3, v4}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Ljava/lang/String;I)Landroid/widget/RadioButton;

    move-result-object v3

    .line 356
    const-string v4, "photos"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/katana/MyTabHost;->a(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;

    move-result-object v3

    .line 357
    invoke-virtual {v3, v2}, Lcom/facebook/katana/MyTabHost$TabSpec;->a(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;

    .line 358
    invoke-virtual {v0, v3}, Lcom/facebook/katana/MyTabHost;->a(Lcom/facebook/katana/MyTabHost$TabSpec;)V

    goto/16 :goto_5

    :cond_13
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 432
    iput-object p1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->o:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->f:Lcom/facebook/katana/TabProgressSource;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->f:Lcom/facebook/katana/TabProgressSource;

    invoke-interface {v0, v2}, Lcom/facebook/katana/TabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->d_()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/TabProgressSource;

    iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->f:Lcom/facebook/katana/TabProgressSource;

    .line 437
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->f:Lcom/facebook/katana/TabProgressSource;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->g:Lcom/facebook/katana/TabProgressListener;

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 439
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/Tuple;

    .line 441
    iget-object v1, v0, Lcom/facebook/katana/util/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lcom/facebook/katana/util/Tuple;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/ProfileTabHostActivity;->a(ILjava/lang/String;)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/facebook/katana/ProfileTabHostActivity;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 522
    packed-switch p1, :pswitch_data_0

    .line 630
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 524
    :pswitch_0
    new-array v0, v2, [Ljava/lang/CharSequence;

    const v1, 0x7f0b03e5

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0b03e1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0b0408

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0b03e4

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v6

    .line 529
    new-array v1, v2, [Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    sget-object v2, Lcom/facebook/katana/service/method/PlacesFlag$FlagType;->INFO_INCORRECT:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/facebook/katana/service/method/PlacesFlag$FlagType;->OFFENSIVE:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/facebook/katana/service/method/PlacesFlag$FlagType;->CLOSED:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/facebook/katana/service/method/PlacesFlag$FlagType;->DUPLICATE:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    aput-object v2, v1, v6

    .line 536
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    const v3, 0x7f0b03e0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 538
    new-instance v3, Lcom/facebook/katana/ProfileTabHostActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/facebook/katana/ProfileTabHostActivity$2;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;[Lcom/facebook/katana/service/method/PlacesFlag$FlagType;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 576
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 577
    const v1, 0x7f0300c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 580
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0434

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0437

    new-instance v3, Lcom/facebook/katana/ProfileTabHostActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/facebook/katana/ProfileTabHostActivity$4;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0405

    new-instance v2, Lcom/facebook/katana/ProfileTabHostActivity$3;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ProfileTabHostActivity$3;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 608
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0438

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0399

    new-instance v2, Lcom/facebook/katana/ProfileTabHostActivity$6;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ProfileTabHostActivity$6;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0405

    new-instance v2, Lcom/facebook/katana/ProfileTabHostActivity$5;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ProfileTabHostActivity$5;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x3

    const/4 v4, 0x0

    .line 470
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 471
    iget v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 473
    const/16 v0, 0x65

    const v1, 0x7f0b03e2

    invoke-interface {p1, v4, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020136

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 480
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 476
    :cond_1
    iget v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    iget-wide v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->k:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 477
    const/16 v0, 0x66

    const v1, 0x7f0b02fd

    invoke-interface {p1, v4, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020133

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->onDestroy()V

    .line 420
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->f:Lcom/facebook/katana/TabProgressSource;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->f:Lcom/facebook/katana/TabProgressSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 423
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 486
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 493
    :goto_0
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 488
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ProfileTabHostActivity;->showDialog(I)V

    goto :goto_0

    .line 492
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb://messaging/compose/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 409
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->onPause()V

    .line 412
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 415
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 392
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->onResume()V

    .line 395
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 397
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_1

    .line 398
    iget v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->j:I

    if-ne v0, v1, :cond_0

    .line 399
    iget-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetPageFanStatus;->a(Landroid/content/Context;J)Ljava/lang/String;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 404
    :cond_1
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-boolean v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->l:Z

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Lcom/facebook/katana/service/method/PagesAddFan;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/katana/ProfileTabHostActivity;->i:J

    move-object v1, p0

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/PagesAddFan;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 510
    iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->e:Lcom/facebook/katana/binding/AppSession;

    const/16 v6, 0x3e9

    const/16 v7, 0x3fc

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->m:Ljava/lang/String;

    .line 514
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/facebook/katana/ProfileTabHostActivity;->a(ILjava/lang/String;)V

    .line 515
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ProfileTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    :cond_0
    return-void
.end method
