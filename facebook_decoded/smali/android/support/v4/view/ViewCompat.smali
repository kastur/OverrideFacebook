.class public Landroid/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field private static a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 126
    new-instance v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 128
    new-instance v0, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 166
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
