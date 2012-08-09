.class public Lcom/facebook/orca/compose/MessageDraft;
.super Ljava/lang/Object;
.source "MessageDraft.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/compose/MessageDraft;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/attachments/MediaResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/facebook/orca/compose/MessageDraft$1;

    invoke-direct {v0}, Lcom/facebook/orca/compose/MessageDraft$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/compose/MessageDraft;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/MessageDraft;->a:Ljava/lang/String;

    .line 23
    const-class v0, Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaResource;

    iput-object v0, p0, Lcom/facebook/orca/compose/MessageDraft;->b:Lcom/facebook/orca/attachments/MediaResource;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/MessageDraft;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/compose/MessageDraft;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/facebook/orca/compose/MessageDraft;->b:Lcom/facebook/orca/attachments/MediaResource;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/compose/MessageDraft;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/attachments/MediaResource;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/compose/MessageDraft;->b:Lcom/facebook/orca/attachments/MediaResource;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    instance-of v2, p1, Lcom/facebook/orca/compose/MessageDraft;

    if-nez v2, :cond_2

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    check-cast p1, Lcom/facebook/orca/compose/MessageDraft;

    .line 48
    invoke-virtual {p0}, Lcom/facebook/orca/compose/MessageDraft;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/compose/MessageDraft;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/facebook/orca/compose/MessageDraft;->b()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/compose/MessageDraft;->b()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/compose/MessageDraft;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/compose/MessageDraft;->b:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    return-void
.end method
