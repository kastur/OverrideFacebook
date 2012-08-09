.class Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;
.super Lcom/facebook/katana/ProfileSearchResultsActivity$ProfileSearchAppSessionListener;
.source "PageSearchResultsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/PageSearchResultsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/PageSearchResultsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    invoke-direct {p0, p1}, Lcom/facebook/katana/ProfileSearchResultsActivity$ProfileSearchAppSessionListener;-><init>(Lcom/facebook/katana/ProfileSearchResultsActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/PageSearchResultsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;-><init>(Lcom/facebook/katana/PageSearchResultsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageSearchResultsActivity;->a(Lcom/facebook/katana/PageSearchResultsActivity;)Lcom/facebook/katana/PageListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/PageListAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 106
    return-void
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    iget-object v0, v0, Lcom/facebook/katana/PageSearchResultsActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/PageSearchResultsActivity;->a(IZ)V

    .line 81
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageSearchResultsActivity;->b(Lcom/facebook/katana/PageSearchResultsActivity;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    iget-object v0, v0, Lcom/facebook/katana/PageSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->e()Landroid/database/Cursor;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    iget-object v1, v1, Lcom/facebook/katana/PageSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    iget-object v1, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    const v2, 0x7f0b01fe

    invoke-virtual {v1, v2}, Lcom/facebook/katana/PageSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
