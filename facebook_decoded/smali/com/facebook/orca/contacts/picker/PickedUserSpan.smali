.class Lcom/facebook/orca/contacts/picker/PickedUserSpan;
.super Landroid/text/style/ReplacementSpan;
.source "PickedUserSpan.java"


# instance fields
.field private final a:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/Rect;

.field private final e:I

.field private final f:I

.field private final g:Lcom/facebook/orca/users/PickedUser;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/PickedUser;Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xff

    .line 36
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->d:Landroid/graphics/Rect;

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->g:Lcom/facebook/orca/users/PickedUser;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->a:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    .line 39
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->b:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object p4, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->c:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->d:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 42
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->e:I

    .line 43
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->f:I

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/users/PickedUser;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->g:Lcom/facebook/orca/users/PickedUser;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    move-object/from16 v6, p9

    check-cast v6, Landroid/text/TextPaint;

    .line 77
    invoke-virtual {v6}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    .line 79
    iget v0, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->e:I

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->b:Landroid/graphics/drawable/Drawable;

    .line 87
    float-to-int v1, p5

    .line 88
    invoke-virtual {v6, p2, p3, p4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    .line 90
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->a:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    iget v3, v3, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;->a:I

    add-int/2addr v1, v3

    .line 91
    add-int/2addr v2, v1

    .line 93
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->a:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    iget v3, v3, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;->b:I

    add-int/2addr v3, p6

    iget-object v4, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->a:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    iget v4, v4, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;->b:I

    sub-int v4, p8, v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    int-to-float v5, p7

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 98
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p1, Landroid/text/TextPaint;

    .line 62
    if-eqz p5, :cond_0

    .line 63
    invoke-virtual {p1, p5}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 64
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->a:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    iget v2, v2, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;->b:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 65
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->a:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    iget v2, v2, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;->b:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 66
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 67
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 69
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->a:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    iget v1, v1, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;->a:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method
