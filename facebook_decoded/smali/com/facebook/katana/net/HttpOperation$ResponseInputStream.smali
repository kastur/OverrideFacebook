.class public Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;
.super Ljava/io/InputStream;
.source "HttpOperation.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 600
    invoke-static {p1, p3}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/PushbackInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    .line 601
    iput-object p2, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a:Ljava/lang/String;

    .line 602
    invoke-static {p2}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b:I

    .line 603
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    .line 604
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/PushbackInputStream;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 577
    if-eqz p1, :cond_0

    const-string v0, "gzip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 580
    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x80

    invoke-direct {v0, p0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 585
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    const v0, 0x9eb10

    .line 592
    :goto_0
    return v0

    .line 589
    :cond_1
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "image/gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    :cond_2
    const v0, 0x35b60

    goto :goto_0

    .line 594
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported content type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 607
    iget v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    iget v1, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b:I

    if-lt v0, v1, :cond_0

    .line 608
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content too large (length unknown): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    return v0
.end method

.method public final a(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 683
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    invoke-static {v0, p1}, Lcom/facebook/katana/util/FileUtils;->a(Ljava/io/InputStream;Ljava/io/File;)V

    .line 684
    return-void
.end method

.method public final a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 655
    iget-object v1, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 656
    const/16 v1, 0x7b

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 661
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 663
    const/4 v2, 0x1

    move v0, v1

    .line 664
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 665
    iget-object v4, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 666
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move v2, v0

    move v0, v1

    .line 677
    :goto_1
    iget-object v4, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    invoke-virtual {v4, v3, v1, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 678
    return v0

    .line 670
    :cond_0
    aget-byte v5, v3, v0

    if-eq v4, v5, :cond_1

    .line 671
    add-int/lit8 v2, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    move v0, v1

    .line 673
    goto :goto_1

    .line 675
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 676
    goto :goto_0

    :cond_2
    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v2, 0x800

    .line 642
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 643
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 644
    new-array v2, v2, [C

    .line 646
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    .line 647
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 635
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c()V

    .line 616
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 617
    iget v1, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    .line 618
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c()V

    .line 624
    iget v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b:I

    if-le v0, v1, :cond_0

    .line 625
    iget v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b:I

    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->d:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    .line 628
    iget v1, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->c:I

    .line 629
    return v0
.end method
