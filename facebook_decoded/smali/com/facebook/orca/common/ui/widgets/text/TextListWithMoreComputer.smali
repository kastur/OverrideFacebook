.class public Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;
.super Ljava/lang/Object;
.source "TextListWithMoreComputer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static a([II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 175
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    array-length v1, p0

    if-eq v1, v2, :cond_2

    const/16 v1, 0xa

    if-ge p1, v1, :cond_3

    .line 178
    :cond_2
    aget v0, p0, v0

    goto :goto_0

    .line 179
    :cond_3
    array-length v0, p0

    if-eq v0, v3, :cond_4

    const/16 v0, 0x64

    if-ge p1, v0, :cond_5

    .line 180
    :cond_4
    aget v0, p0, v2

    goto :goto_0

    .line 182
    :cond_5
    aget v0, p0, v3

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;IIILandroid/text/TextPaint;[I)Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Landroid/text/TextPaint;",
            "[I)",
            "Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 66
    invoke-virtual/range {p5 .. p5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 67
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v8, v2, v1

    .line 68
    move/from16 v0, p4

    int-to-float v1, v0

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 69
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v9

    .line 70
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Iterators;->g(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v10

    .line 71
    const/4 v2, -0x1

    .line 72
    const-string v4, ","

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 74
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v4, 0x1e

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    :goto_0
    if-lez p3, :cond_a

    if-lez v3, :cond_a

    cmpl-float v4, v1, v8

    if-ltz v4, :cond_a

    .line 77
    add-int/lit8 p3, p3, -0x1

    .line 78
    sub-float v7, v1, v8

    .line 79
    move/from16 v0, p2

    int-to-float v1, v0

    .line 80
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v4, v3

    move v3, v2

    move v2, v1

    .line 81
    :goto_1
    invoke-interface {v10}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-interface {v10}, Lcom/google/common/collect/PeekingIterator;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 88
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const-string v5, ", "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 98
    const/4 v6, 0x1

    if-le v4, v6, :cond_b

    if-lez p3, :cond_b

    .line 99
    add-float v6, v5, v11

    .line 102
    :goto_3
    if-lez p3, :cond_4

    cmpl-float v14, v7, v8

    if-ltz v14, :cond_4

    .line 105
    cmpg-float v6, v6, v2

    if-gez v6, :cond_1

    .line 106
    invoke-interface {v10}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 107
    add-int/lit8 v4, v4, -0x1

    .line 108
    invoke-static {v13, v1}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 155
    :goto_4
    sub-float v1, v2, v5

    move v2, v1

    .line 156
    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 112
    :cond_1
    const-string v1, ","

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_2
    :goto_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v2, v3

    move v1, v7

    move v3, v4

    .line 163
    goto :goto_0

    .line 116
    :cond_4
    if-lez v4, :cond_8

    .line 117
    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;->a([II)I

    move-result v6

    .line 118
    sub-float v14, v2, v5

    int-to-float v15, v6

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    .line 121
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 122
    const-string v3, "\u2026, "

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 127
    :goto_6
    sub-float v15, v2, v5

    int-to-float v0, v6

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    const/4 v15, 0x3

    if-le v3, v15, :cond_5

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointBefore(I)I

    move-result v5

    .line 129
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 130
    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v5, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v5

    add-float/2addr v5, v14

    .line 131
    goto :goto_6

    .line 132
    :cond_5
    sub-float/2addr v2, v5

    int-to-float v5, v6

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_6

    .line 133
    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "\u2026"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v4, v4, -0x1

    :cond_6
    move v3, v4

    .line 139
    goto :goto_5

    .line 141
    :cond_7
    invoke-interface {v10}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 142
    add-int/lit8 v4, v4, -0x1

    .line 143
    invoke-static {v13, v1}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4

    .line 146
    :cond_8
    cmpg-float v6, v2, v5

    if-gez v6, :cond_9

    .line 147
    const/4 v3, 0x1

    goto :goto_4

    .line 149
    :cond_9
    invoke-interface {v10}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 150
    add-int/lit8 v4, v4, -0x1

    .line 151
    invoke-static {v13, v1}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 164
    :cond_a
    new-instance v1, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;

    invoke-direct {v1, v9, v2}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;-><init>(Ljava/util/List;I)V

    return-object v1

    :cond_b
    move v6, v5

    goto/16 :goto_3
.end method
