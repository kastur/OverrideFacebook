.class public Lcom/facebook/apache/commons/codec/language/RefinedSoundex;
.super Ljava/lang/Object;
.source "RefinedSoundex.java"

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
    .line 43
    const-string v0, "01360240043788015936020505"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/commons/codec/language/RefinedSoundex;->a:[C

    .line 56
    new-instance v0, Lcom/facebook/apache/commons/codec/language/RefinedSoundex;

    invoke-direct {v0}, Lcom/facebook/apache/commons/codec/language/RefinedSoundex;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/facebook/apache/commons/codec/language/RefinedSoundex;->a:[C

    iput-object v0, p0, Lcom/facebook/apache/commons/codec/language/RefinedSoundex;->b:[C

    .line 64
    return-void
.end method

.method private a(C)C
    .locals 2
    .parameter

    .prologue
    .line 159
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/RefinedSoundex;->b:[C

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-static {p1}, Lcom/facebook/apache/commons/codec/language/SoundexUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v3

    .line 178
    goto :goto_0

    .line 181
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    const/16 v1, 0x2a

    .line 187
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/facebook/apache/commons/codec/language/RefinedSoundex;->a(C)C

    move-result v2

    .line 190
    if-eq v2, v1, :cond_3

    .line 191
    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    move v1, v2

    .line 187
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 132
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/facebook/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to RefinedSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/language/RefinedSoundex;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
