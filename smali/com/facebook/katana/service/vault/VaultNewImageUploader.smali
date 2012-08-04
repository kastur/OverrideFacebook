.class public Lcom/facebook/katana/service/vault/VaultNewImageUploader;
.super Ljava/lang/Object;
.source "VaultNewImageUploader.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

.field private final d:Lcom/facebook/katana/service/vault/methods/VaultImageUploadMethod;

.field private final e:Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;

.field private final f:Lcom/facebook/katana/service/vault/VaultImageFetcher;

.field private final g:Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

.field private final h:Lcom/facebook/katana/util/logging/VaultLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/protocol/base/SingleMethodRunner;Lcom/facebook/katana/service/vault/methods/VaultImageUploadMethod;Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;Lcom/facebook/katana/service/vault/VaultImageFetcher;Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->c:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 64
    iput-object p3, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->d:Lcom/facebook/katana/service/vault/methods/VaultImageUploadMethod;

    .line 65
    iput-object p4, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->e:Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;

    .line 66
    iput-object p5, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->f:Lcom/facebook/katana/service/vault/VaultImageFetcher;

    .line 67
    iput-object p6, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->g:Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

    .line 68
    new-instance v0, Lcom/facebook/katana/util/logging/VaultLogger;

    invoke-direct {v0, p1}, Lcom/facebook/katana/util/logging/VaultLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->h:Lcom/facebook/katana/util/logging/VaultLogger;

    .line 69
    return-void
.end method

.method private a(J)Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;
    .locals 13
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 323
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 324
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 326
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->f:Lcom/facebook/katana/service/vault/VaultImageFetcher;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/service/vault/VaultImageFetcher;->b(J)Ljava/util/Map;

    move-result-object v6

    .line 328
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->f:Lcom/facebook/katana/service/vault/VaultImageFetcher;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/service/vault/VaultImageFetcher;->a(J)Ljava/util/Map;

    move-result-object v7

    .line 331
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/service/vault/VaultManager;->c(Landroid/content/Context;)Z

    move-result v8

    .line 334
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/provider/VaultImageProviderRow;

    .line 336
    if-nez v1, :cond_1

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "detected new photo: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 339
    invoke-static {v0}, Lcom/facebook/katana/provider/VaultImageProviderRow;->a(Ljava/lang/String;)Lcom/facebook/katana/provider/VaultImageProviderRow;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 340
    :cond_1
    iget v10, v1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 341
    const-string v10, "found row to re-upload: %s"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 343
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_2
    if-eqz v8, :cond_0

    iget v10, v1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    if-nez v10, :cond_0

    .line 346
    const-string v10, "found row to upgrade resolution: %s"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 347
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    :cond_3
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/provider/VaultImageProviderRow;

    .line 358
    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 360
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    :cond_4
    if-nez v2, :cond_5

    iget v1, v0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    if-ne v1, v3, :cond_5

    .line 365
    iget-wide p1, v0, Lcom/facebook/katana/provider/VaultImageProviderRow;->c:J

    goto :goto_1

    .line 366
    :cond_5
    if-nez v2, :cond_7

    move v0, v3

    :goto_2
    move v2, v0

    .line 369
    goto :goto_1

    .line 371
    :cond_6
    new-instance v0, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;

    invoke-direct {v0, p1, p2, v4, v5}, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;-><init>(JLjava/util/Map;Ljava/util/List;)V

    return-object v0

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter

    .prologue
    .line 436
    const-string v0, "vault_temp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/katana/provider/VaultImageProviderRow;)Ljava/io/File;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 180
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/service/vault/VaultManager;->c(Landroid/content/Context;)Z

    move-result v0

    .line 182
    if-eqz v0, :cond_0

    iget v1, p2, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    if-eq v1, v4, :cond_0

    .line 185
    iput v2, p2, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    .line 186
    sget v3, Lcom/facebook/katana/features/vault/VaultConstants;->b:I

    .line 187
    const-string v1, "uploading %s in high res"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 202
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resized_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x6

    invoke-static {v5}, Lcom/facebook/katana/util/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    sget v5, Lcom/facebook/katana/features/vault/VaultConstants;->c:I

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;III)V
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_1
    return-object v2

    .line 188
    :cond_0
    if-nez v0, :cond_1

    iget v1, p2, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    if-eq v1, v4, :cond_1

    iget v1, p2, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    if-eqz v1, :cond_1

    .line 192
    iput v3, p2, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    .line 193
    sget v3, Lcom/facebook/katana/features/vault/VaultConstants;->a:I

    .line 194
    const-string v1, "uploading %s in low res"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    const-string v1, "no need to upload file: %s, need_high_res: %b, row: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v4

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;)V

    move-object v2, v6

    .line 198
    goto :goto_1

    .line 211
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    sget v0, Lcom/facebook/katana/features/vault/VaultConstants;->c:I

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/io/File;Ljava/io/File;II)V
    :try_end_1
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string v1, "vault_image_upload_resize exception"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resize of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/katana/util/ImageUtils$ImageException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    .line 220
    goto :goto_1
.end method

.method private a(JLcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;J)Ljava/util/Map;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/provider/VaultImageProviderRow;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 243
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;

    iget-object v1, p3, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    move-wide v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;-><init>(JLjava/util/Collection;J)V

    .line 245
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->c:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v3, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->g:Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

    invoke-virtual {v2, v3, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;

    .line 250
    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;->b()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 256
    :goto_0
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 257
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 259
    iget-object v0, p3, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;

    .line 263
    if-nez v2, :cond_0

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    sget-object v2, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    const-string v2, "vault_local_image_status_api exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    .line 267
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/provider/VaultImageProviderRow;

    .line 268
    iget-wide v7, v2, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;->mFbid:J

    iput-wide v7, v0, Lcom/facebook/katana/provider/VaultImageProviderRow;->b:J

    .line 269
    iget-boolean v2, v2, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;->mDeleted:Z

    if-eqz v2, :cond_1

    .line 270
    const/4 v1, 0x5

    iput v1, v0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    .line 271
    invoke-virtual {v0}, Lcom/facebook/katana/provider/VaultImageProviderRow;->c()Landroid/content/ContentValues;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_1
    iput v9, v0, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "image previously synced in LOW_RES: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/katana/provider/VaultImageProviderRow;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 277
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 282
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 284
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 285
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 287
    const-string v1, "inserted %d existing rows into local vault table."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 290
    :cond_3
    return-object v4
.end method

.method private a(Lcom/facebook/katana/provider/VaultImageProviderRow;)V
    .locals 4
    .parameter

    .prologue
    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->d:J

    .line 377
    const-string v0, "writing upload row: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->c()Landroid/content/ContentValues;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 382
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->h:Lcom/facebook/katana/util/logging/VaultLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/logging/VaultLogger;->a(Lcom/facebook/katana/provider/VaultImageProviderRow;)V

    .line 383
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;Lcom/facebook/katana/provider/VaultImageProviderRow;)V

    .line 384
    return-void
.end method

.method private a(Lcom/facebook/katana/provider/VaultImageProviderRow;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    iput-wide p2, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->b:J

    .line 390
    iget v0, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    packed-switch v0, :pswitch_data_0

    .line 398
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Upload success with bad state. fbid: %d, row: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :pswitch_0
    iput v4, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    .line 402
    :goto_0
    const-string v0, "Recording upload success for row: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->c()Landroid/content/ContentValues;

    move-result-object v0

    .line 405
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 407
    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    const-string v4, "image_hash = ?"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->h:Lcom/facebook/katana/util/logging/VaultLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/logging/VaultLogger;->b(Lcom/facebook/katana/provider/VaultImageProviderRow;)V

    .line 411
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Lcom/facebook/katana/provider/VaultImageProviderRow;)V

    .line 412
    return-void

    .line 395
    :pswitch_1
    iput v5, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/facebook/katana/provider/VaultImageProviderRow;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 416
    iget v0, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->e:I

    .line 417
    iget v0, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->e:I

    sget v1, Lcom/facebook/katana/provider/VaultImageProvider;->a:I

    if-lt v0, v1, :cond_0

    .line 418
    const/4 v0, 0x6

    iput v0, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    .line 423
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->c()Landroid/content/ContentValues;

    move-result-object v0

    .line 424
    const-string v1, "Recording upload failure for row: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 426
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 427
    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    const-string v4, "image_hash = ?"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->h:Lcom/facebook/katana/util/logging/VaultLogger;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/util/logging/VaultLogger;->a(Lcom/facebook/katana/provider/VaultImageProviderRow;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Lcom/facebook/katana/provider/VaultImageProviderRow;)V

    .line 432
    return-void

    .line 420
    :cond_0
    const/4 v0, 0x4

    iput v0, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    goto :goto_0
.end method

.method private a(Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    const-string v1, "vault:last_synced_date"

    iget-wide v2, p1, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;

    invoke-direct {v0, p2, p3}, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;-><init>(J)V

    .line 229
    iget-wide v1, p1, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->a:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->a(J)V

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->c:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->e:Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    sget-object v1, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    const-string v1, "vault_device_update_api exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 12

    .prologue
    .line 73
    const/4 v8, 0x1

    .line 74
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    const-string v1, "vault:device_oid"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    .line 76
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    const-string v3, "vault:last_synced_date"

    const-wide/16 v4, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 79
    const-string v0, "syncing photos for device_oid: %d and date_taken >= %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v4, v5}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a(J)Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;

    move-result-object v3

    .line 85
    iget-wide v6, v3, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->a:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_6

    .line 89
    const-string v0, "updating last_sync_date from %d to %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    iget-wide v9, v3, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v3, v1, v2}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a(Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;J)V

    .line 92
    iget-wide v4, v3, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->a:J

    move-wide v6, v4

    .line 96
    :goto_0
    const-wide/16 v4, 0x3e8

    div-long v4, v6, v4

    .line 98
    iget-object v0, v3, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    move-object v0, p0

    .line 100
    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a(JLcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;J)Ljava/util/Map;

    move-result-object v0

    .line 104
    iget-object v4, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->h:Lcom/facebook/katana/util/logging/VaultLogger;

    iget-object v5, v3, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v4, v5, v9, v6, v7}, Lcom/facebook/katana/util/logging/VaultLogger;->a(IIJ)V

    .line 108
    iget-object v4, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v5}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 111
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v10, v8

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    iget-object v4, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/katana/service/vault/VaultManager;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    const-string v0, "abort current sync because some state has changed"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b(Landroid/content/Context;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;)V

    .line 158
    :goto_2
    iget-object v0, v3, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing image from vault with hash "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 162
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    const-string v4, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "image_hash"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 118
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/provider/VaultImageProviderRow;

    .line 120
    iget-object v4, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->f:Lcom/facebook/katana/service/vault/VaultImageFetcher;

    invoke-virtual {v4, v6}, Lcom/facebook/katana/service/vault/VaultImageFetcher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-direct {p0, v4, v0}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a(Ljava/lang/String;Lcom/facebook/katana/provider/VaultImageProviderRow;)Ljava/io/File;

    move-result-object v5

    .line 123
    if-nez v5, :cond_2

    .line 124
    const-string v0, "skipping image %s for whatever reason"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;)V

    .line 125
    invoke-static {v6}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 129
    :cond_2
    new-instance v4, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/facebook/katana/provider/VaultImageProviderRow;->b:J

    invoke-direct/range {v4 .. v9}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)V

    .line 132
    invoke-direct {p0, v0}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a(Lcom/facebook/katana/provider/VaultImageProviderRow;)V

    .line 136
    :try_start_0
    iget-object v6, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->c:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v7, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->d:Lcom/facebook/katana/service/vault/methods/VaultImageUploadMethod;

    invoke-virtual {v6, v7, v4}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;

    .line 139
    invoke-virtual {v4}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;->a()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 140
    invoke-virtual {v4}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;->a()J

    move-result-wide v6

    invoke-direct {p0, v0, v6, v7}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a(Lcom/facebook/katana/provider/VaultImageProviderRow;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v10

    .line 152
    :goto_4
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move v10, v0

    .line 153
    goto/16 :goto_1

    .line 142
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a(Lcom/facebook/katana/provider/VaultImageProviderRow;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    const/4 v0, 0x0

    goto :goto_4

    .line 145
    :catch_0
    move-exception v4

    .line 146
    sget-object v6, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    const-string v6, "vault_image_upload_api exception"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a(Lcom/facebook/katana/provider/VaultImageProviderRow;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    goto :goto_4

    .line 166
    :cond_4
    return v10

    :cond_5
    move v10, v8

    goto/16 :goto_2

    :cond_6
    move-wide v6, v4

    goto/16 :goto_0
.end method
