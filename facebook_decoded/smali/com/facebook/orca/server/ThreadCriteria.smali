.class public Lcom/facebook/orca/server/ThreadCriteria;
.super Ljava/lang/Object;
.source "ThreadCriteria.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/ThreadCriteria;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/users/UserKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/orca/server/ThreadCriteria$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/ThreadCriteria$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/ThreadCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/ThreadCriteria;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/ThreadCriteria;->b:Lcom/facebook/orca/users/UserKey;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/ThreadCriteria;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/server/ThreadCriteria;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/facebook/orca/server/ThreadCriteria;->b:Lcom/facebook/orca/users/UserKey;

    .line 20
    return-void

    :cond_0
    move v2, v1

    .line 17
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/ThreadCriteria;
    .locals 2
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/facebook/orca/server/ThreadCriteria;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/facebook/orca/server/ThreadCriteria;-><init>(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;
    .locals 2
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/orca/server/ThreadCriteria;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/server/ThreadCriteria;-><init>(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/server/ThreadCriteria;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/server/ThreadCriteria;->b:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/server/ThreadCriteria;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/server/ThreadCriteria;->b:Lcom/facebook/orca/users/UserKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/server/ThreadCriteria;->b:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
