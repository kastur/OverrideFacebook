.class public Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lcom/facebook/apache/http/message/HeaderValueFormatter;


# static fields
.field public static final a:Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;->a:Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/apache/http/NameValuePair;)I
    .locals 2
    .parameter

    .prologue
    .line 354
    if-nez p0, :cond_1

    .line 355
    const/4 v0, 0x0

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-interface {p0}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 358
    invoke-interface {p0}, Lcom/facebook/apache/http/NameValuePair;->b()Ljava/lang/String;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Lcom/facebook/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x22

    const/4 v1, 0x0

    .line 381
    if-nez p3, :cond_0

    move v0, v1

    .line 382
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 383
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;->a(C)Z

    move-result p3

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    if-eqz p3, :cond_1

    .line 388
    invoke-virtual {p1, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 390
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 391
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 392
    invoke-static {v0}, Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;->b(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 395
    :cond_2
    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    :cond_3
    if-eqz p3, :cond_4

    .line 398
    invoke-virtual {p1, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 400
    :cond_4
    return-void
.end method

.method private static a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 412
    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(C)Z
    .locals 1
    .parameter

    .prologue
    .line 425
    const-string v0, "\"\\"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/NameValuePair;Z)Lcom/facebook/apache/http/util/CharArrayBuffer;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    if-nez p2, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NameValuePair must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    invoke-static {p2}, Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;->a(Lcom/facebook/apache/http/NameValuePair;)I

    move-result v0

    .line 329
    if-nez p1, :cond_2

    .line 330
    new-instance p1, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 335
    :goto_0
    invoke-interface {p2}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 336
    invoke-interface {p2}, Lcom/facebook/apache/http/NameValuePair;->b()Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1

    .line 338
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 339
    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/apache/http/message/BasicHeaderValueFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 342
    :cond_1
    return-object p1

    .line 332
    :cond_2
    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(I)V

    goto :goto_0
.end method
