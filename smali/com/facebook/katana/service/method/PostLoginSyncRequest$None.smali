.class final enum Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;
.super Ljava/lang/Enum;
.source "PostLoginSyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

.field public static final enum INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    sget-object v1, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->$VALUES:[Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;
    .locals 1
    .parameter

    .prologue
    .line 115
    const-class v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->$VALUES:[Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    invoke-virtual {v0}, [Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    return-object v0
.end method
