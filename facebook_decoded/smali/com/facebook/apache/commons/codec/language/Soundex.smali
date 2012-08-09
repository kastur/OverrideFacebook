.class public Lcom/facebook/apache/commons/codec/language/Soundex;
.super Ljava/lang/Object;
.source "Soundex.java"

# interfaces
.implements Lcom/facebook/apache/commons/codec/StringEncoder;


# static fields
.field private static a:[C


# instance fields
.field private final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "01230120022455012623010202"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/commons/codec/language/Soundex;->a:[C

    .line 57
    new-instance v0, Lcom/facebook/apache/commons/codec/language/Soundex;

    invoke-direct {v0}, Lcom/facebook/apache/commons/codec/language/Soundex;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/facebook/apache/commons/codec/language/Soundex;->a:[C

    iput-object v0, p0, Lcom/facebook/apache/commons/codec/language/Soundex;->b:[C

    .line 104
    return-void
.end method

.method private a(C)C
    .locals 3
    .parameter

    .prologue
    .line 225
    add-int/lit8 v0, p1, -0x41

    .line 226
    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/language/Soundex;->a()[C

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character is not mapped: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/language/Soundex;->a()[C

    move-result-object v1

    aget-char v0, v1, v0

    return v0
.end method

.method private a(Ljava/lang/String;I)C
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x57

    const/16 v3, 0x48

    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/codec/language/Soundex;->a(C)C

    move-result v0

    .line 183
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    .line 184
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 185
    if-eq v3, v1, :cond_0

    if-ne v4, v1, :cond_2

    .line 186
    :cond_0
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 187
    invoke-direct {p0, v1}, Lcom/facebook/apache/commons/codec/language/Soundex;->a(C)C

    move-result v2

    .line 188
    if-eq v2, v0, :cond_1

    if-eq v3, v1, :cond_1

    if-ne v4, v1, :cond_2

    .line 189
    :cond_1
    const/4 v0, 0x0

    .line 193
    :cond_2
    return v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 253
    if-nez p1, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    .line 256
    :cond_0
    invoke-static {p1}, Lcom/facebook/apache/commons/codec/language/SoundexUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v4

    .line 258
    goto :goto_0

    .line 260
    :cond_1
    const/4 v1, 0x4

    new-array v5, v1, [C

    fill-array-data v5, :array_0

    .line 263
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v5, v2

    .line 265
    invoke-direct {p0, v4, v2}, Lcom/facebook/apache/commons/codec/language/Soundex;->a(Ljava/lang/String;I)C

    move-result v1

    move v3, v1

    move v1, v0

    .line 266
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    array-length v2, v5

    if-ge v0, v2, :cond_3

    .line 267
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v4, v1}, Lcom/facebook/apache/commons/codec/language/Soundex;->a(Ljava/lang/String;I)C

    move-result v1

    .line 268
    if-eqz v1, :cond_4

    .line 269
    const/16 v6, 0x30

    if-eq v1, v6, :cond_2

    if-eq v1, v3, :cond_2

    .line 270
    add-int/lit8 v3, v0, 0x1

    aput-char v1, v5, v0

    move v0, v3

    :cond_2
    move v3, v1

    move v1, v2

    .line 272
    goto :goto_1

    .line 275
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 260
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method

.method private a()[C
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/Soundex;->b:[C

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 147
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/facebook/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Soundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/language/Soundex;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
