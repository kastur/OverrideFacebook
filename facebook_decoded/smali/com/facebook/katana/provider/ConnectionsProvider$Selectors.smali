.class final enum Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;
.super Ljava/lang/Enum;
.source "ConnectionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum CONNECTIONS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum CONNECTION_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum FRIENDS_BIRTHDAYS:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum FRIENDS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum FRIENDS_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum FRIEND_UID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum PAGES_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum PAGES_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum PAGE_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum SEARCH_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

.field public static final enum SEARCH_SUGGESTIONS:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;


# instance fields
.field final category:Ljava/lang/String;

.field final uriMatcherSuffix:Ljava/lang/String;

.field final uriSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 279
    new-instance v0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v1, "CONNECTIONS_CONTENT"

    const-string v3, "connections"

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTIONS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 280
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "CONNECTION_ID"

    const-string v6, "connections"

    const-string v7, "/id"

    const-string v8, "/#"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTION_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 282
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "FRIENDS_CONTENT"

    const-string v6, "friends"

    const-string v7, ""

    const-string v8, ""

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 283
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "FRIEND_UID"

    const-string v6, "friends"

    const-string v7, "/uid"

    const-string v8, "/#"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIEND_UID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 284
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "FRIENDS_SEARCH"

    const-string v6, "friends"

    const-string v7, "/search"

    const-string v8, "/*"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 285
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "FRIENDS_BIRTHDAYS"

    const/4 v5, 0x5

    const-string v6, "friends"

    const-string v7, "/birthdays"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_BIRTHDAYS:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 286
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "SEARCH_SUGGESTIONS"

    const/4 v5, 0x6

    const-string v6, "search_suggest_query"

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_SUGGESTIONS:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 288
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "PAGES_CONTENT"

    const/4 v5, 0x7

    const-string v6, "pages"

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 289
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "PAGE_ID"

    const/16 v5, 0x8

    const-string v6, "pages"

    const-string v7, "/id"

    const-string v8, "/#"

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGE_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 290
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "PAGES_SEARCH"

    const/16 v5, 0x9

    const-string v6, "pages"

    const-string v7, "/search"

    const-string v8, "/*"

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 292
    new-instance v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    const-string v4, "SEARCH_CONTENT"

    const/16 v5, 0xa

    const-string v6, "search_results"

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    .line 278
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTIONS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->CONNECTION_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIEND_UID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->FRIENDS_BIRTHDAYS:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_SUGGESTIONS:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGE_ID:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->PAGES_SEARCH:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->SEARCH_CONTENT:Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->$VALUES:[Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 299
    iput-object p3, p0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->category:Ljava/lang/String;

    .line 300
    iput-object p4, p0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriSuffix:Ljava/lang/String;

    .line 301
    iput-object p5, p0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->uriMatcherSuffix:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;
    .locals 1
    .parameter

    .prologue
    .line 278
    const-class v0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->$VALUES:[Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    invoke-virtual {v0}, [Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;

    return-object v0
.end method


# virtual methods
.method public final uriMatcherIndex()I
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/facebook/katana/provider/ConnectionsProvider$Selectors;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
