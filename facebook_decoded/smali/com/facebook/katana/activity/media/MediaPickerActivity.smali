.class public Lcom/facebook/katana/activity/media/MediaPickerActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "MediaPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private f:Lcom/facebook/katana/view/vault/PickerGalleryView;

.field private g:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

.field private h:Landroid/widget/GridView;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/Button;

.field private k:Lcom/facebook/katana/activity/media/SelectionState;

.field private l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 67
    sget-object v0, Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;->GRID:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    .line 281
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/MediaPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/MediaPickerActivity;Lcom/facebook/katana/model/MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->a(Lcom/facebook/katana/model/MediaItem;)V

    return-void
.end method

.method private a(Lcom/facebook/katana/model/MediaItem;)V
    .locals 2
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->f:Lcom/facebook/katana/view/vault/PickerGalleryView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/vault/PickerGalleryView;->setVisibility(I)V

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->f:Lcom/facebook/katana/view/vault/PickerGalleryView;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/view/vault/PickerGalleryView;->a(Lcom/facebook/katana/model/MediaItem;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->h:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 218
    sget-object v0, Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;->GALLERY:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    .line 219
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j()V

    .line 220
    return-void
.end method

.method private f()V
    .locals 13

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "image_hash"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "image_fbid"

    aput-object v1, v2, v0

    .line 131
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    .line 137
    const-string v0, "MediaPickerActivity"

    const-string v1, "no vault cursor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v10

    .line 142
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 145
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/activity/media/MediaPickerActivity;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 150
    if-nez v11, :cond_2

    .line 151
    const-string v0, "MediaPickerActivity"

    const-string v1, "no MediaStore cursor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v12

    .line 155
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    const/4 v0, 0x5

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/VaultImageProvider;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 162
    :goto_3
    new-instance v0, Lcom/facebook/katana/model/MediaItem;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x2

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/model/MediaItem;-><init>(JLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 169
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    :cond_3
    const-wide/16 v8, -0x1

    goto :goto_3

    .line 171
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 173
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->g:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    invoke-virtual {v0, v12}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a(Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->f:Lcom/facebook/katana/view/vault/PickerGalleryView;

    invoke-virtual {v0, v12}, Lcom/facebook/katana/view/vault/PickerGalleryView;->setMedia(Ljava/util/List;)V

    .line 175
    iput-object v12, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->i:Ljava/util/List;

    .line 177
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/vault/VaultService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    const-string v1, "job"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->h:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->f:Lcom/facebook/katana/view/vault/PickerGalleryView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/vault/PickerGalleryView;->setVisibility(I)V

    .line 207
    sget-object v0, Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;->GRID:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    .line 208
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j()V

    .line 209
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    :pswitch_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/SelectionState;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 236
    sget-object v0, Lcom/facebook/katana/activity/media/MediaPickerActivity$1;->a:[I

    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 247
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    .line 248
    iget-object v3, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v3, v0}, Lcom/facebook/katana/activity/media/SelectionState;->c(Lcom/facebook/katana/model/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    const-string v2, "media_item"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->finish()V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->f:Lcom/facebook/katana/view/vault/PickerGalleryView;

    invoke-virtual {v0}, Lcom/facebook/katana/view/vault/PickerGalleryView;->a()V

    goto :goto_1

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 259
    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/SelectionState;->a()I

    move-result v1

    if-lez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Post ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/SelectionState;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j:Landroid/widget/Button;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    sget-object v3, Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;->GALLERY:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    if-ne v2, v3, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j:Landroid/widget/Button;

    const-string v1, "Post"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->setContentView(I)V

    .line 74
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->h:Landroid/widget/GridView;

    .line 75
    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/vault/PickerGalleryView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->f:Lcom/facebook/katana/view/vault/PickerGalleryView;

    .line 76
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    if-eqz p1, :cond_1

    .line 81
    const-string v0, "view_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    sget-object v1, Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;->GALLERY:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    if-ne v0, v1, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->a(Lcom/facebook/katana/model/MediaItem;)V

    .line 85
    :cond_0
    const-string v0, "selection_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    new-instance v1, Lcom/facebook/katana/activity/media/SelectionState;

    invoke-direct {v1, v0}, Lcom/facebook/katana/activity/media/SelectionState;-><init>([J)V

    iput-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Lcom/facebook/katana/activity/media/SelectionState;

    invoke-direct {v0}, Lcom/facebook/katana/activity/media/SelectionState;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    new-instance v1, Lcom/facebook/katana/activity/media/MediaPickerActivity$MediaSelectionStateListener;

    invoke-direct {v1, p0, v3}, Lcom/facebook/katana/activity/media/MediaPickerActivity$MediaSelectionStateListener;-><init>(Lcom/facebook/katana/activity/media/MediaPickerActivity;B)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/SelectionState;->a(Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->f:Lcom/facebook/katana/view/vault/PickerGalleryView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/vault/PickerGalleryView;->setSelectionState(Lcom/facebook/katana/activity/media/SelectionState;)V

    .line 97
    new-instance v0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->h:Landroid/widget/GridView;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;-><init>(Landroid/content/Context;Landroid/widget/AdapterView;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->g:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    .line 99
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->h:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->g:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->g:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a(Lcom/facebook/katana/activity/media/SelectionState;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->g:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    new-instance v1, Lcom/facebook/katana/activity/media/MediaPickerActivity$ItemClickListener;

    invoke-direct {v1, p0, v3}, Lcom/facebook/katana/activity/media/MediaPickerActivity$ItemClickListener;-><init>(Lcom/facebook/katana/activity/media/MediaPickerActivity;B)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$OnItemClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->f()V

    .line 104
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->j()V

    .line 105
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0b0256

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    sget-object v1, Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;->GALLERY:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    if-ne v0, v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->h()V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 275
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->i()V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x7f080151
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->g()V

    .line 121
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "view_state"

    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->l:Lcom/facebook/katana/activity/media/MediaPickerActivity$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 113
    const-string v0, "selection_state"

    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity;->k:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/SelectionState;->b()[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 114
    return-void
.end method
