.class public abstract Lcom/facebook/orca/attachments/MediaAttachment;
.super Ljava/lang/Object;
.source "MediaAttachment.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/attachments/MediaResource;

.field private final c:Lcom/facebook/orca/images/ImageScalingUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Lcom/facebook/orca/attachments/MediaResource;

    .line 38
    new-instance v0, Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-direct {v0, p1}, Lcom/facebook/orca/images/ImageScalingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/images/ImageScalingUtil;

    .line 39
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/protocol/base/ByteArrayBody;
    .locals 6
    .parameter

    .prologue
    .line 233
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 234
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 237
    new-instance v3, Lcom/facebook/orca/protocol/base/ByteArrayBody;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v4, "image/jpeg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lcom/facebook/orca/protocol/base/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private b(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    const-string v1, "orca:MediaAttachment"

    const-string v2, "Unable to read the original bitmap"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->a:Landroid/content/Context;

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 92
    sget-object v2, Lcom/facebook/orca/attachments/MediaAttachment$1;->a:[I

    iget-object v3, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v3}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/attachments/MediaResource$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 117
    const-string v1, "orca:MediaAttachment"

    const-string v2, "Unexpected attachment type"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 94
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/facebook/orca/attachments/MediaAttachment;->b(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-static {v2, v1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 105
    if-nez v2, :cond_1

    .line 106
    const-string v1, "orca:MediaAttachment"

    const-string v2, "Unable to generate a thumbnail for the video"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-static {v2, v1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public abstract a()Ljava/io/InputStream;
.end method

.method public abstract b()Lcom/google/common/io/InputSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final d()Lcom/facebook/orca/attachments/MediaResource;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Lcom/facebook/orca/attachments/MediaResource;

    return-object v0
.end method

.method public final e()Lcom/facebook/orca/protocol/base/ContentBody;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 129
    sget-object v0, Lcom/facebook/orca/attachments/MediaAttachment$1;->a:[I

    iget-object v2, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/MediaResource$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 161
    const-string v0, "orca:MediaAttachment"

    const-string v2, "Unexpected attachment type"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 162
    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 136
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 137
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 142
    const-wide v3, 0x3ff199999999999aL

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v5, v0

    mul-double v2, v3, v5

    double-to-int v0, v2

    .line 143
    invoke-direct {p0, v0}, Lcom/facebook/orca/attachments/MediaAttachment;->b(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 145
    if-nez v2, :cond_0

    move-object v0, v1

    .line 146
    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-static {v2, v0}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/protocol/base/ByteArrayBody;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_1
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/facebook/orca/protocol/methods/DataStreamBody;

    const-string v2, "video/3gpp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/protocol/methods/DataStreamBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_2
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/facebook/orca/protocol/methods/DataStreamBody;

    const-string v2, "audio/AMR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/protocol/methods/DataStreamBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/facebook/orca/attachments/MediaAttachment$1;->a:[I

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 185
    const-string v0, "orca:MediaAttachment"

    const-string v1, "Unexpected attachment type"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unexpected attachment type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_0
    const-string v0, "me/photos"

    .line 178
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "me/videos"

    goto :goto_0

    .line 181
    :pswitch_2
    const-string v0, "orca:MediaAttachment"

    const-string v1, "Audio shares are not implemented"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Audio shares are not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final g()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/images/ImageScalingUtil;->b(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
