.class public final Landroid/override/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/override/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static btnStart:I

.field public static txtAccel:I

.field public static txtLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x7f05

    sput v0, Landroid/override/R$id;->btnStart:I

    .line 18
    const v0, 0x7f050002

    sput v0, Landroid/override/R$id;->txtAccel:I

    .line 19
    const v0, 0x7f050001

    sput v0, Landroid/override/R$id;->txtLocation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
