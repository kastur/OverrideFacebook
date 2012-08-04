.class public Lcom/facebook/orca/photos/picking/PickMediaOperation;
.super Landroid/support/v4/app/Fragment;
.source "PickMediaOperation.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
.end annotation


# instance fields
.field private J:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

.field private K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

.field private L:Lcom/facebook/orca/photos/picking/PickMediaParams;

.field private M:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M:J

    .line 76
    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.intent.extra.durationLimit"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 185
    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/attachments/AudioRecorderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 191
    return-void
.end method

.method private G()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->I()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 203
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v1, "Exception opening files"

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private H()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 376
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v0

    .line 377
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L()Ljava/io/File;

    move-result-object v1

    .line 379
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/camera/CropImage;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "image/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v0, "outputX"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->c()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v0, "outputY"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->d()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v0, "aspectX"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->e()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v0, "aspectY"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->f()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v0, "scale"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    const-string v0, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 387
    const-string v0, "outputFormat"

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p0, v2, v5}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private I()Ljava/lang/String;
    .locals 3

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "temp-compose-photo_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private J()Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "temp-compose-photo-post-cropped_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private K()Ljava/io/File;
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private L()Ljava/io/File;
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private M()V
    .locals 1

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 420
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 421
    return-void
.end method

.method private N()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 432
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->b()V

    .line 435
    :cond_0
    return-void
.end method

.method private O()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 439
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->a()V

    .line 442
    :cond_0
    return-void
.end method

.method private P()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->c()V

    .line 449
    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->G()V

    .line 156
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v0

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 223
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_1

    .line 228
    const-string v2, "orca:PickMediaOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got attachment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v0

    .line 231
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Lcom/google/common/io/InputSupplier;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->I()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->H()V

    .line 247
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string v1, "orca:PickMediaOperation"

    const-string v2, "Got IOException while trying to process file"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->O()V

    goto :goto_0

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 1
    .parameter

    .prologue
    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 425
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    .line 428
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a()V

    return-void
.end method

.method private a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;

    invoke-direct {v0, p0, p2}, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;-><init>(Lcom/facebook/orca/photos/picking/PickMediaOperation;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/common/io/ByteStreams;->a(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 220
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->G()V

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 168
    return-void
.end method

.method private b(ILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 273
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 274
    const/4 v1, 0x0

    .line 276
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 277
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 278
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/io/Files;->a(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->I()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->H()V

    .line 292
    :goto_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 281
    :goto_2
    const-string v2, "orca:PickMediaOperation"

    const-string v3, "Got IOException while trying to process file"

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    goto :goto_1

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_1

    .line 280
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->G()V

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/images/ImageSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method

.method private c(ILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 305
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    .line 329
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 313
    if-nez v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->O()V

    goto :goto_0

    .line 318
    :cond_1
    const-string v1, "orca:PickMediaOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got video attachment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v1

    .line 321
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->I()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V

    .line 323
    invoke-static {v1}, Lcom/facebook/orca/attachments/MediaResource;->b(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    const-string v1, "orca:PickMediaOperation"

    const-string v2, "Got IOException while trying to process file"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c()V

    return-void
.end method

.method private d(I)V
    .locals 1
    .parameter

    .prologue
    .line 250
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->H()V

    .line 266
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    .line 270
    :goto_1
    return-void

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_1
.end method

.method private d(ILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 333
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    .line 356
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->c(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v1

    .line 341
    if-nez v1, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->O()V

    goto :goto_0

    .line 346
    :cond_1
    const-string v2, "orca:PickMediaOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got audio attachment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v0

    .line 349
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Lcom/google/common/io/InputSupplier;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->I()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V

    .line 351
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->c(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    const-string v1, "orca:PickMediaOperation"

    const-string v2, "Got IOException while trying to process file"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->E()V

    return-void
.end method

.method private e(I)V
    .locals 1
    .parameter

    .prologue
    .line 295
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L()Ljava/io/File;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    .line 298
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->F()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->P()V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 361
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(ILandroid/content/Intent;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 363
    invoke-direct {p0, p2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d(I)V

    goto :goto_0

    .line 364
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 365
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b(ILandroid/content/Intent;)V

    goto :goto_0

    .line 366
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 367
    invoke-direct {p0, p2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e(I)V

    goto :goto_0

    .line 368
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 369
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c(ILandroid/content/Intent;)V

    goto :goto_0

    .line 370
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 371
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 80
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 81
    const-class v1, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 82
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/PickMediaParams;

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 89
    const-string v0, "uniqueId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M:J

    .line 91
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    .line 105
    return-void
.end method

.method public final a(Lcom/facebook/orca/photos/picking/PickMediaParams;)V
    .locals 3
    .parameter

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M:J

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "orca:PickMediaOperation"

    const-string v1, "Photo operation already in progress. Shouldn\'t happen"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 118
    invoke-virtual {p1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->g()Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a(Ljava/lang/String;Ljava/util/EnumSet;)Lcom/facebook/orca/photos/picking/MediaChoiceDialog;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;-><init>(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;)V

    .line 151
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->m()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    const-string v0, "params"

    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    const-string v0, "uniqueId"

    iget-wide v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    return-void
.end method
