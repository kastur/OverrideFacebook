.class Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/names/NameSplitter;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2211
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/common/names/NameSplitter;
    .locals 6

    .prologue
    .line 2215
    new-instance v0, Lcom/facebook/orca/common/names/NameSplitter;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$string;->common_name_prefixes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v2}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/orca/R$string;->common_last_name_prefixes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v3}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/facebook/orca/R$string;->common_name_suffixes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v4}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/facebook/orca/R$string;->common_name_conjunctions:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/names/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2211
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;->b()Lcom/facebook/orca/common/names/NameSplitter;

    move-result-object v0

    return-object v0
.end method
