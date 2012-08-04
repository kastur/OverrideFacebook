.class public Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 449
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 450
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 940
    if-ne p0, p1, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v0

    .line 943
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 944
    goto :goto_0

    .line 946
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 947
    goto :goto_0

    .line 949
    :cond_3
    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 950
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 951
    iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 952
    goto :goto_0

    .line 954
    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 955
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
