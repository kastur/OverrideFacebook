.class public Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;
.super Ljava/lang/Object;
.source "TaggingAutoCompleteTextView.java"


# instance fields
.field private final a:Lcom/facebook/katana/model/FacebookProfile;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a:Lcom/facebook/katana/model/FacebookProfile;

    .line 122
    return-void
.end method

.method private static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 259
    const/16 v0, 0x11

    .line 260
    if-nez p0, :cond_0

    .line 261
    const/16 v0, 0x21

    .line 263
    :cond_0
    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/text/Editable;)I
    .locals 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;

    .line 133
    invoke-virtual {v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/text/Editable;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    .line 180
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->c()Ljava/lang/String;

    move-result-object v2

    .line 182
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 184
    new-instance v3, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;-><init>(Ljava/lang/String;)V

    .line 185
    add-int/2addr v1, p2

    add-int v4, p2, v0

    iget-object v5, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a(I)I

    move-result v5

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 187
    iget-object v1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    new-instance v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;-><init>(Ljava/lang/String;)V

    .line 194
    add-int/2addr v1, p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a(I)I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 196
    iget-object v1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public final b(Landroid/text/Editable;)I
    .locals 2
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a:Lcom/facebook/katana/model/FacebookProfile;

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    return-wide v0
.end method

.method public final c(Landroid/text/Editable;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;

    .line 209
    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;->a(Landroid/text/Editable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    .line 212
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;

    .line 213
    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;->a(Landroid/text/Editable;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 220
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;

    .line 222
    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;->a(Landroid/text/Editable;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 224
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 229
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;

    .line 230
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 234
    :goto_3
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 235
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$NameSpan;

    .line 236
    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a(I)I

    move-result v4

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 239
    :cond_7
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
