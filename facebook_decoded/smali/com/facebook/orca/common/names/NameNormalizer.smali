.class public Lcom/facebook/orca/common/names/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static final a:Ljava/text/RuleBasedCollator;

.field private static final b:Ljava/text/RuleBasedCollator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    .line 27
    sput-object v0, Lcom/facebook/orca/common/names/NameNormalizer;->a:Ljava/text/RuleBasedCollator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 28
    sget-object v0, Lcom/facebook/orca/common/names/NameNormalizer;->a:Ljava/text/RuleBasedCollator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->setDecomposition(I)V

    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    .line 35
    sput-object v0, Lcom/facebook/orca/common/names/NameNormalizer;->b:Ljava/text/RuleBasedCollator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-static {p0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/facebook/orca/common/names/NameNormalizer;->a:Ljava/text/RuleBasedCollator;

    invoke-static {v0}, Lcom/facebook/orca/common/names/NameNormalizer;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/Hex;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 70
    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_1

    .line 71
    aget-char v5, v4, v0

    .line 72
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    add-int/lit8 v3, v2, 0x1

    aput-char v5, v4, v2

    move v2, v3

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    array-length v0, v4

    if-eq v2, v0, :cond_2

    .line 78
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 81
    :cond_2
    return-object p0
.end method
