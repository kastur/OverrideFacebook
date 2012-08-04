.class public Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;
.super Ljava/lang/Object;
.source "ContactPickerEditableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static a(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 36
    instance-of v0, p0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;-><init>(II)V

    .line 87
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 41
    check-cast v0, Landroid/text/Spannable;

    .line 42
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 43
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 45
    if-eq v6, v1, :cond_1

    move-object v0, v4

    .line 47
    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 54
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v5, Lcom/facebook/orca/contacts/picker/PickedUserSpan;

    invoke-interface {v0, v2, v1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/orca/contacts/picker/PickedUserSpan;

    .line 55
    array-length v7, v1

    move v5, v2

    move v10, v3

    move v3, v2

    move v2, v10

    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v8, v1, v5

    .line 56
    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 57
    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 58
    if-ge v9, v6, :cond_2

    if-le v8, v6, :cond_2

    move-object v0, v4

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    if-ge v9, v6, :cond_4

    .line 63
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 55
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 64
    :cond_4
    if-le v8, v6, :cond_3

    .line 65
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    .line 70
    :cond_5
    :goto_3
    if-ge v3, v2, :cond_6

    .line 71
    invoke-interface {v0, v3}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 79
    :cond_6
    :goto_4
    add-int/lit8 v1, v2, -0x1

    if-ge v3, v1, :cond_7

    .line 80
    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 81
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 87
    :cond_7
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;

    invoke-direct {v0, v3, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method final b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-static {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;->a(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 100
    const-string v0, ""

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;->a:I

    iget v0, v0, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;->b:I

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
