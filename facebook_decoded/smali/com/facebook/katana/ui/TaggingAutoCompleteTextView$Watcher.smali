.class public Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$Watcher;
.super Ljava/lang/Object;
.source "TaggingAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$Watcher;->a:Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x21

    const/4 v3, 0x0

    .line 436
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;

    invoke-interface {p1, v3, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;

    .line 440
    iget-object v1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$Watcher;->a:Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    array-length v2, v0

    iput v2, v1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->b:I

    .line 442
    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v6, v0, v4

    .line 444
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 445
    add-int/lit8 v2, v1, 0x1

    const-class v7, Landroid/text/style/StyleSpan;

    invoke-interface {p1, v1, v2, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/StyleSpan;

    .line 446
    array-length v2, v1

    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    .line 448
    sget-object v2, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a:Ljava/lang/String;

    const-string v7, "unexpected number of style spans to invalidate"

    invoke-static {v2, v7}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    invoke-interface {p1, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 452
    array-length v7, v1

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v8, v1, v2

    .line 453
    invoke-interface {p1, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 456
    :cond_1
    invoke-virtual {v6, p1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->c(Landroid/text/Editable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    iget-object v1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$Watcher;->a:Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    iget v2, v1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->b:I

    .line 442
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 461
    :cond_2
    array-length v7, v1

    move v2, v3

    :goto_3
    if-ge v2, v7, :cond_3

    aget-object v8, v1, v2

    .line 462
    invoke-virtual {v6, p1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a(Landroid/text/Editable;)I

    move-result v9

    invoke-virtual {v6, p1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b(Landroid/text/Editable;)I

    move-result v10

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 465
    :cond_3
    invoke-virtual {v6, p1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a(Landroid/text/Editable;)I

    move-result v1

    invoke-virtual {v6, p1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b(Landroid/text/Editable;)I

    move-result v2

    invoke-interface {p1, v6, v1, v2, v11}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 469
    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    return-void
.end method
