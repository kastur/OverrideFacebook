.class public Lcom/facebook/apache/http/client/utils/Rfc3492Idn;
.super Ljava/lang/Object;
.source "Rfc3492Idn.java"

# interfaces
.implements Lcom/facebook/apache/http/client/utils/Idn;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)I
    .locals 3
    .parameter

    .prologue
    .line 67
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x41

    .line 69
    :goto_0
    return v0

    .line 68
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    goto :goto_0

    .line 69
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(IIZ)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    if-eqz p2, :cond_0

    div-int/lit16 v0, p0, 0x2bc

    .line 57
    :goto_0
    div-int v1, v0, p1

    add-int/2addr v1, v0

    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_1
    const/16 v2, 0x1c7

    if-le v1, v2, :cond_1

    .line 60
    div-int/lit8 v1, v1, 0x23

    .line 61
    add-int/lit8 v0, v0, 0x24

    goto :goto_1

    .line 56
    :cond_0
    div-int/lit8 v0, p0, 0x2

    goto :goto_0

    .line 63
    :cond_1
    mul-int/lit8 v2, v1, 0x24

    add-int/lit8 v1, v1, 0x26

    div-int v1, v2, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 86
    const/16 v1, 0x80

    .line 88
    const/16 v0, 0x48

    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    const/16 v3, 0x2d

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 91
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 92
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move v3, v1

    move v1, v2

    .line 96
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 99
    const/16 v4, 0x24

    move v5, v6

    move v7, v1

    .line 100
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 102
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {v8}, Lcom/facebook/apache/http/client/utils/Rfc3492Idn;->a(C)I

    move-result v10

    .line 104
    mul-int v8, v10, v5

    add-int/2addr v7, v8

    .line 106
    add-int/lit8 v8, v0, 0x1

    if-gt v4, v8, :cond_0

    move v8, v6

    .line 113
    :goto_2
    if-lt v10, v8, :cond_2

    .line 114
    rsub-int/lit8 v8, v8, 0x24

    mul-int/2addr v5, v8

    .line 99
    add-int/lit8 v4, v4, 0x24

    goto :goto_1

    .line 108
    :cond_0
    add-int/lit8 v8, v0, 0x1a

    if-lt v4, v8, :cond_1

    .line 109
    const/16 v8, 0x1a

    goto :goto_2

    .line 111
    :cond_1
    sub-int v8, v4, v0

    goto :goto_2

    .line 116
    :cond_2
    sub-int v4, v7, v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    if-nez v1, :cond_3

    move v0, v6

    :goto_3
    invoke-static {v4, v5, v0}, Lcom/facebook/apache/http/client/utils/Rfc3492Idn;->a(IIZ)I

    move-result v0

    .line 117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int v1, v7, v1

    add-int/2addr v3, v1

    .line 118
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int v1, v7, v1

    .line 120
    int-to-char v4, v3

    invoke-virtual {v9, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    goto :goto_0

    :cond_3
    move v0, v2

    .line 116
    goto :goto_3

    .line 123
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v3, v1

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "."

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    const-string v3, "xn--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/client/utils/Rfc3492Idn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
