.class Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;
.super Ljava/util/StringTokenizer;
.source "NameSplitter.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    const-string v0, " .,"

    invoke-direct {p0, p1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->a:[Ljava/lang/String;

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->e:I

    if-ge v0, v5, :cond_4

    .line 63
    invoke-virtual {p0}, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 66
    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 67
    :cond_1
    iget v1, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->e:I

    if-lez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 72
    iget v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->b:I

    iget v1, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->e:I

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v4, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->b:I

    goto :goto_0

    .line 73
    :cond_2
    iget v1, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->e:I

    if-lez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    .line 74
    iget v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->c:I

    iget v1, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->e:I

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v4, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->c:I

    goto :goto_0

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->e:I

    aput-object v0, v1, v2

    .line 77
    iget v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->e:I

    goto :goto_0

    .line 80
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->d:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->e:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;)I
    .locals 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/orca/common/names/NameSplitter$NameTokenizer;->d:I

    return v0
.end method
