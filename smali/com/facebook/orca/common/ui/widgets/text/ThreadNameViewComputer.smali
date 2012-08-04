.class public Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;
.super Ljava/lang/Object;
.source "ThreadNameViewComputer.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer",
        "<",
        "Lcom/facebook/orca/threads/ThreadSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/ThreadDisplayCache;Landroid/content/res/Resources;Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 52
    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->b:Landroid/content/res/Resources;

    .line 53
    iput-object p3, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->c:Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    .line 54
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;Ljava/util/List;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
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
    .line 74
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    .line 75
    if-nez p1, :cond_0

    .line 77
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1, v0, p3, p4}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;)Landroid/text/StaticLayout;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 81
    invoke-static {v1, v0, p3, p4}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p5

    move v5, p6

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Ljava/util/List;III)Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    move-result-object v0

    .line 92
    iget-object v1, v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;->a:Landroid/text/TextPaint;

    invoke-static {v1, v0, p3, p4}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;)Landroid/text/StaticLayout;
    .locals 12
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
            ">;",
            "Landroid/text/TextPaint;",
            "I",
            "Landroid/text/Layout$Alignment;",
            ")",
            "Landroid/text/StaticLayout;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 177
    if-nez p0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 180
    :cond_0
    const/4 v0, 0x1

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    if-nez v1, :cond_1

    .line 184
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 187
    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x4000

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v4, p1

    move-object v6, p3

    move v9, v2

    move v11, p2

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    goto :goto_0
.end method

.method private static a(Landroid/text/TextPaint;Ljava/lang/String;I)Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 197
    int-to-float v1, p2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 198
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;-><init>(Landroid/text/TextPaint;Ljava/util/List;)V

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;III)Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;
    .locals 7
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
            "Landroid/text/TextPaint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)",
            "Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 117
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    .line 121
    invoke-static {v0, v1, p3}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Landroid/text/TextPaint;Ljava/lang/String;I)Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-object v0

    .line 127
    :cond_1
    if-gez p5, :cond_4

    .line 128
    const v4, 0x7fffffff

    .line 132
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/TextPaint;

    .line 133
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 134
    if-ge v0, v3, :cond_2

    .line 135
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;-><init>(Landroid/text/TextPaint;Ljava/util/List;)V

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x3

    new-array v6, v0, [I

    .line 141
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    aput v1, v6, v0

    .line 142
    const/4 v0, 0x1

    const/16 v1, 0x58

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    aput v1, v6, v0

    .line 143
    const/16 v0, 0x378

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    aput v0, v6, v3

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->c:Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;->a(Ljava/util/List;IIILandroid/text/TextPaint;[I)Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;->a()Ljava/util/List;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;->b()I

    move-result v3

    if-lez v3, :cond_3

    .line 156
    add-int/lit8 v3, v0, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_3
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;

    invoke-direct {v0, v5, v2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;-><init>(Landroid/text/TextPaint;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    move v4, p5

    goto/16 :goto_1
.end method

.method private a(I)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->b:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/orca/R$string;->thread_name_n_more:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->b:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->thread_name_with_only_you:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 28
    move-object v1, p1

    check-cast v1, Lcom/facebook/orca/threads/ThreadSummary;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Lcom/facebook/orca/threads/ThreadSummary;Ljava/util/List;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method
