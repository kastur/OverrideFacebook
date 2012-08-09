.class public Lcom/facebook/katana/ui/TagView;
.super Landroid/widget/Button;
.source "TagView.java"


# instance fields
.field public a:J

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 20
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagView;->getCompoundPaddingLeft()I

    move-result v1

    .line 21
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagView;->getCompoundPaddingRight()I

    move-result v2

    .line 23
    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    .line 29
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    .line 30
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagView;->getCompoundPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 31
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagView;->getCompoundPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    .line 33
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    return v0
.end method
