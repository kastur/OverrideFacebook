.class public final enum Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;
.super Ljava/lang/Enum;
.source "ConnectionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

.field public static final enum PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

.field public static final enum PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

.field public static final enum USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    new-instance v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    .line 194
    new-instance v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    const-string v1, "PAGE_ADMIN"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    .line 195
    new-instance v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    const-string v1, "PAGE_FAN"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    .line 192
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->USER:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->$VALUES:[Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

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
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;
    .locals 1
    .parameter

    .prologue
    .line 192
    const-class v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->$VALUES:[Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v0}, [Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    return-object v0
.end method
