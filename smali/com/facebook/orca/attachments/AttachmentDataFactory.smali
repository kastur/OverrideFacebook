.class public Lcom/facebook/orca/attachments/AttachmentDataFactory;
.super Ljava/lang/Object;
.source "AttachmentDataFactory.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/OrcaHttpConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/auth/OrcaAuthenticationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "_[ts]\\.jpg$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "\\/[ts]([^/]+\\.jpg)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b:Ljava/util/regex/Pattern;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio/"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/auth/OrcaAuthenticationManager;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/OrcaHttpConfig;",
            ">;",
            "Lcom/facebook/orca/auth/OrcaAuthenticationManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/AttachmentInfo;)Landroid/net/Uri;
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 295
    const-string v1, "method/messaging.getAttachment"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 296
    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 297
    if-eqz p2, :cond_0

    .line 298
    const-string v1, "aid"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 303
    :goto_0
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v2}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->b()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 305
    const-string v1, "format"

    const-string v2, "binary"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    const-string v1, "aid"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private static a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 2
    .parameter

    .prologue
    .line 242
    new-instance v0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->f()Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/attachments/MediaResource$Type;->PHOTO:Lcom/facebook/orca/attachments/MediaResource$Type;

    if-ne v1, v2, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Ljava/lang/String;Lcom/facebook/orca/threads/AttachmentInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 268
    new-instance v2, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->c(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    .line 273
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->f()Lcom/facebook/orca/threads/AttachmentInfo$ImageData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->f()Lcom/facebook/orca/threads/AttachmentInfo$ImageData;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a(I)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b(I)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    .line 279
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->f()Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/orca/threads/Message;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 77
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 57
    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    const-string v4, "image/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 59
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/attachments/MediaResource$Type;->PHOTO:Lcom/facebook/orca/attachments/MediaResource$Type;

    if-ne v0, v3, :cond_4

    move v0, v1

    .line 65
    goto :goto_0

    :cond_4
    move v0, v2

    .line 77
    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 3
    .parameter

    .prologue
    .line 249
    invoke-static {p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;

    move-result-object v0

    .line 250
    invoke-static {p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    new-instance v2, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->f()Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/OtherAttachmentData;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Ljava/lang/String;Lcom/facebook/orca/threads/AttachmentInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->e()I

    move-result v3

    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/orca/attachments/OtherAttachmentData;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private static c(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/facebook/orca/threads/Message;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 125
    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    const-string v3, "audio/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method private static d(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v0

    .line 330
    sget-object v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string v0, "_n.jpg"

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_0
    sget-object v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/facebook/orca/threads/Message;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 160
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 155
    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    const-string v3, "image/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 160
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->r()Landroid/net/Uri;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 314
    const-string v1, "method/messaging.getAttachment"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 315
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 316
    const-string v1, "hash"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 317
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v2}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->b()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 319
    const-string v1, "format"

    const-string v2, "binary"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 320
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 2
    .parameter

    .prologue
    .line 235
    const-string v0, "photo"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 94
    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_2

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 102
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 115
    :cond_4
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/OtherAttachmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 139
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 141
    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 142
    if-eqz v3, :cond_1

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/OtherAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public final f(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/OtherAttachmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 168
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_1

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/OtherAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method
