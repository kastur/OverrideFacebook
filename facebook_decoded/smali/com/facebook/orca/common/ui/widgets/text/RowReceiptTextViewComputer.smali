.class public Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;
.super Ljava/lang/Object;
.source "RowReceiptTextViewComputer.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/cache/DataCache;

.field private final c:Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->b:Lcom/facebook/orca/cache/DataCache;

    .line 36
    iput-object p3, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->c:Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    .line 37
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;Ljava/util/List;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;",
            "Ljava/util/List",
            "<",
            "Landroid/text/TextPaint;",
            ">;I",
            "Landroid/text/Layout$Alignment;",
            "II)",
            "Landroid/text/Layout;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Since only one textPaint is picked, it should only include one"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "Only one line is laid out by this logic."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    if-nez p1, :cond_2

    .line 66
    const-string v1, ""

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    invoke-static {v1, p4, p3, v0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a(Ljava/lang/String;Landroid/text/Layout$Alignment;ILandroid/text/TextPaint;)Landroid/text/Layout;

    move-result-object v0

    .line 108
    :goto_2
    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    invoke-static {v1, p4, p3, v0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a(Ljava/lang/String;Landroid/text/Layout$Alignment;ILandroid/text/TextPaint;)Landroid/text/Layout;

    move-result-object v0

    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 75
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a:Landroid/content/Context;

    sget v2, Lcom/facebook/orca/R$string;->message_seen_receipt_group_multiple:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v2, v0

    .line 80
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a:Landroid/content/Context;

    sget v3, Lcom/facebook/orca/R$string;->message_seen_receipt_group_multiple_more:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v1, v0

    .line 84
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a:Landroid/content/Context;

    sget v4, Lcom/facebook/orca/R$string;->message_seen_receipt_group_multiple_more:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x58

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 88
    const/4 v3, 0x2

    new-array v6, v3, [I

    .line 89
    const/4 v3, 0x0

    sub-int/2addr v1, v2

    aput v1, v6, v3

    .line 90
    const/4 v1, 0x1

    sub-int/2addr v0, v2

    aput v0, v6, v1

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->c:Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sub-int v2, p3, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/TextPaint;

    move v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;->a(Ljava/util/List;IIILandroid/text/TextPaint;[I)Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;->a()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;->b()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    invoke-static {v1, p4, p3, v0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a(Ljava/lang/String;Landroid/text/Layout$Alignment;ILandroid/text/TextPaint;)Landroid/text/Layout;

    move-result-object v0

    goto/16 :goto_2

    .line 108
    :cond_4
    const-string v1, ""

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    invoke-static {v1, p4, p3, v0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a(Ljava/lang/String;Landroid/text/Layout$Alignment;ILandroid/text/TextPaint;)Landroid/text/Layout;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;Landroid/text/Layout$Alignment;ILandroid/text/TextPaint;)Landroid/text/Layout;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 116
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x4000

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v1, p0

    move-object v4, p3

    move-object v6, p1

    move v9, v2

    move v11, p2

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    if-lez p2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/orca/R$string;->message_seen_receipt_group_multiple_more:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/orca/R$string;->message_seen_receipt_group_multiple:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowReceiptParticipant;

    .line 144
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/List;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    move-object v1, p1

    check-cast v1, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;->a(Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;Ljava/util/List;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method
