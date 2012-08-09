.class Lcom/facebook/orca/common/names/ContactLocaleUtils$ChineseContactUtils;
.super Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;
.source "ContactLocaleUtils.java"


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/names/ContactLocaleUtils$ChineseContactUtils;-><init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 84
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 85
    invoke-static {}, Lcom/facebook/orca/common/names/HanziToPinyin;->a()Lcom/facebook/orca/common/names/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/names/HanziToPinyin;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 94
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;

    .line 95
    const/4 v7, 0x2

    iget v8, v0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->a:I

    if-ne v7, v8, :cond_1

    .line 96
    iget-object v7, v0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->c:Ljava/lang/String;

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v7, v0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->c:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    :goto_1
    iget-object v0, v0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->b:Ljava/lang/String;

    invoke-virtual {v6, v9, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v7, 0x1

    iget v8, v0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->a:I

    if-ne v7, v8, :cond_0

    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 101
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 103
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 104
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 106
    :cond_3
    iget-object v7, v0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->b:Ljava/lang/String;

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v7, v0, Lcom/facebook/orca/common/names/HanziToPinyin$Token;->b:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
