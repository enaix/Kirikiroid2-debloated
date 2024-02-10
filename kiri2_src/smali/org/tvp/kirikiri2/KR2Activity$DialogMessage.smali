.class Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;
.super Ljava/lang/Object;
.source "KR2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tvp/kirikiri2/KR2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DialogMessage"
.end annotation


# instance fields
.field public Buttons:[Ljava/lang/String;

.field public Text:Ljava/lang/String;

.field public TextEditor:Landroid/widget/EditText;

.field public Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 332
    return-void
.end method


# virtual methods
.method public CreateBuilder()Landroid/app/AlertDialog$Builder;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 353
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    iget-object v2, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 355
    iget-object v2, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 357
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 358
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v4, :cond_0

    .line 359
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-instance v2, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;

    invoke-direct {v2, p0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;-><init>(Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 366
    :cond_0
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v5, :cond_1

    .line 367
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    aget-object v1, v1, v4

    new-instance v2, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$2;

    invoke-direct {v2, p0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$2;-><init>(Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 374
    :cond_1
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 375
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    aget-object v1, v1, v5

    new-instance v2, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$3;

    invoke-direct {v2, p0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$3;-><init>(Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 382
    :cond_2
    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$4;

    invoke-direct {v1, p0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$4;-><init>(Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    return-object v0
.end method

.method public Init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "buttons"    # [Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Title:Ljava/lang/String;

    .line 337
    iput-object p2, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Text:Ljava/lang/String;

    .line 338
    iput-object p3, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    .line 339
    return-void
.end method

.method public ShowInputBox(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 397
    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->CreateBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 398
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/widget/EditText;

    sget-object v5, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 399
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 406
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 407
    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 408
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 409
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 410
    return-void
.end method

.method public ShowMessageBox()V
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->CreateBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 394
    return-void
.end method

.method onButtonClick(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/tvp/kirikiri2/KR2Activity;->access$0(Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-static {p1}, Lorg/tvp/kirikiri2/KR2Activity;->access$1(I)V

    .line 346
    return-void
.end method
