.class final Lcustom/android/AbsSpinner$SavedState$1;
.super Ljava/lang/Object;
.source "AbsSpinner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcustom/android/AbsSpinner$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcustom/android/AbsSpinner$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 420
    new-instance v0, Lcustom/android/AbsSpinner$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcustom/android/AbsSpinner$SavedState;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcustom/android/AbsSpinner$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 424
    new-array v0, p0, [Lcustom/android/AbsSpinner$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 418
    invoke-static {p1}, Lcustom/android/AbsSpinner$SavedState$1;->a(Landroid/os/Parcel;)Lcustom/android/AbsSpinner$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 418
    invoke-static {p1}, Lcustom/android/AbsSpinner$SavedState$1;->a(I)[Lcustom/android/AbsSpinner$SavedState;

    move-result-object v0

    return-object v0
.end method
