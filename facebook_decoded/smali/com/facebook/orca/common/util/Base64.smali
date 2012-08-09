.class public Lcom/facebook/orca/common/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/orca/common/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/orca/common/util/Base64;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 459
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/facebook/orca/common/util/Base64;->c([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 460
    :catch_0
    move-exception v0

    .line 462
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;I)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/Base64;->b([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static a([BIII)[B
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 161
    new-instance v1, Lcom/facebook/orca/common/util/Base64$Decoder;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/facebook/orca/common/util/Base64$Decoder;-><init>(I[B)V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {v1, p0, v3, p2, v0}, Lcom/facebook/orca/common/util/Base64$Decoder;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget v0, v1, Lcom/facebook/orca/common/util/Base64$Decoder;->b:I

    iget-object v2, v1, Lcom/facebook/orca/common/util/Base64$Decoder;->a:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 169
    iget-object v0, v1, Lcom/facebook/orca/common/util/Base64$Decoder;->a:[B

    .line 176
    :goto_0
    return-object v0

    .line 174
    :cond_1
    iget v0, v1, Lcom/facebook/orca/common/util/Base64$Decoder;->b:I

    new-array v0, v0, [B

    .line 175
    iget-object v2, v1, Lcom/facebook/orca/common/util/Base64$Decoder;->a:[B

    iget v1, v1, Lcom/facebook/orca/common/util/Base64$Decoder;->b:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static b([BI)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/facebook/orca/common/util/Base64;->a([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method private static b([BIII)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 513
    new-instance v3, Lcom/facebook/orca/common/util/Base64$Encoder;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lcom/facebook/orca/common/util/Base64$Encoder;-><init>(I[B)V

    .line 516
    div-int/lit8 v0, p2, 0x3

    shl-int/lit8 v0, v0, 0x2

    .line 519
    iget-boolean v1, v3, Lcom/facebook/orca/common/util/Base64$Encoder;->c:Z

    if-eqz v1, :cond_2

    .line 520
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_0

    .line 521
    add-int/lit8 v0, v0, 0x4

    .line 532
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, v3, Lcom/facebook/orca/common/util/Base64$Encoder;->d:Z

    if-eqz v1, :cond_1

    if-lez p2, :cond_1

    .line 533
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v4, v1, 0x1

    iget-boolean v1, v3, Lcom/facebook/orca/common/util/Base64$Encoder;->e:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_1
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 537
    :cond_1
    new-array v1, v0, [B

    iput-object v1, v3, Lcom/facebook/orca/common/util/Base64$Encoder;->a:[B

    .line 538
    const/4 v1, 0x0

    invoke-virtual {v3, p0, v1, p2, v2}, Lcom/facebook/orca/common/util/Base64$Encoder;->a([BIIZ)Z

    .line 540
    sget-boolean v1, Lcom/facebook/orca/common/util/Base64;->a:Z

    if-nez v1, :cond_4

    iget v1, v3, Lcom/facebook/orca/common/util/Base64$Encoder;->b:I

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 524
    :cond_2
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 526
    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 527
    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 533
    goto :goto_1

    .line 542
    :cond_4
    iget-object v0, v3, Lcom/facebook/orca/common/util/Base64$Encoder;->a:[B

    return-object v0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static c([BI)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 497
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/facebook/orca/common/util/Base64;->b([BIII)[B

    move-result-object v0

    return-object v0
.end method
