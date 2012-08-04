.class final enum Lcom/facebook/katana/ui/NavBar$ListenState;
.super Ljava/lang/Enum;
.source "NavBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/ui/NavBar$ListenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/ui/NavBar$ListenState;

.field public static final enum DEFERRING:Lcom/facebook/katana/ui/NavBar$ListenState;

.field public static final enum INTERCEPTING:Lcom/facebook/katana/ui/NavBar$ListenState;

.field public static final enum MONITORING:Lcom/facebook/katana/ui/NavBar$ListenState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/facebook/katana/ui/NavBar$ListenState;

    const-string v1, "MONITORING"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/ui/NavBar$ListenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->MONITORING:Lcom/facebook/katana/ui/NavBar$ListenState;

    .line 30
    new-instance v0, Lcom/facebook/katana/ui/NavBar$ListenState;

    const-string v1, "INTERCEPTING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/ui/NavBar$ListenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->INTERCEPTING:Lcom/facebook/katana/ui/NavBar$ListenState;

    .line 31
    new-instance v0, Lcom/facebook/katana/ui/NavBar$ListenState;

    const-string v1, "DEFERRING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/ui/NavBar$ListenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->DEFERRING:Lcom/facebook/katana/ui/NavBar$ListenState;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/katana/ui/NavBar$ListenState;

    sget-object v1, Lcom/facebook/katana/ui/NavBar$ListenState;->MONITORING:Lcom/facebook/katana/ui/NavBar$ListenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/ui/NavBar$ListenState;->INTERCEPTING:Lcom/facebook/katana/ui/NavBar$ListenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/ui/NavBar$ListenState;->DEFERRING:Lcom/facebook/katana/ui/NavBar$ListenState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->$VALUES:[Lcom/facebook/katana/ui/NavBar$ListenState;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/ui/NavBar$ListenState;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/facebook/katana/ui/NavBar$ListenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/NavBar$ListenState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/ui/NavBar$ListenState;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->$VALUES:[Lcom/facebook/katana/ui/NavBar$ListenState;

    invoke-virtual {v0}, [Lcom/facebook/katana/ui/NavBar$ListenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/ui/NavBar$ListenState;

    return-object v0
.end method
