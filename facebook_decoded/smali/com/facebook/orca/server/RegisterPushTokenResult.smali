.class public Lcom/facebook/orca/server/RegisterPushTokenResult;
.super Lcom/facebook/orca/server/BaseResult;
.source "RegisterPushTokenResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/RegisterPushTokenResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/orca/server/RegisterPushTokenResult$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/RegisterPushTokenResult$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/RegisterPushTokenResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/server/RegisterPushTokenResult;->a:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/facebook/orca/server/RegisterPushTokenResult;->b:Z

    .line 29
    return-void

    :cond_0
    move v0, v2

    .line 27
    goto :goto_0

    :cond_1
    move v1, v2

    .line 28
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/RegisterPushTokenResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct {p0, v0, p3, p4}, Lcom/facebook/orca/server/BaseResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;J)V

    .line 21
    iput-boolean p1, p0, Lcom/facebook/orca/server/RegisterPushTokenResult;->a:Z

    .line 22
    iput-boolean p2, p0, Lcom/facebook/orca/server/RegisterPushTokenResult;->b:Z

    .line 23
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/facebook/orca/server/RegisterPushTokenResult;->a:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/facebook/orca/server/RegisterPushTokenResult;->b:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/server/BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    iget-boolean v0, p0, Lcom/facebook/orca/server/RegisterPushTokenResult;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-boolean v0, p0, Lcom/facebook/orca/server/RegisterPushTokenResult;->b:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v1, v2

    .line 59
    goto :goto_1
.end method
